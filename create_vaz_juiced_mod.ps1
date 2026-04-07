param(
    [string]$DcsRoot = "C:\Program Files\Eagle Dynamics\DCS World",
    [string]$SavedGamesRoot,
    [string]$ModName = "VAZ_JUICED",
    [string]$UnitName = "VAZ JUICED",
    [double]$MaxSpeedKph = 280.0,
    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Get-DefaultSavedGamesRoot {
    $candidates = @(
        (Join-Path $env:USERPROFILE "Saved Games\DCS.openbeta"),
        (Join-Path $env:USERPROFILE "Saved Games\DCS")
    )

    foreach ($candidate in $candidates) {
        if (Test-Path $candidate) {
            return $candidate
        }
    }

    return $candidates[0]
}

function Ensure-Directory {
    param([string]$Path)

    if (-not (Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
    }
}

function Write-Utf8NoBom {
    param(
        [string]$Path,
        [string]$Content
    )

    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($Path, $Content, $utf8NoBom)
}

if (-not $SavedGamesRoot) {
    $SavedGamesRoot = Get-DefaultSavedGamesRoot
}

$resolvedDcsRoot = (Resolve-Path $DcsRoot).Path
if (-not (Test-Path $resolvedDcsRoot)) {
    throw "DCS root not found: $DcsRoot"
}

$sourceShapeDir = Join-Path $resolvedDcsRoot "Bazar\World\Shapes"
$sourceVazEdm = Join-Path $sourceShapeDir "vaz.edm"
$sourceVazLods = Join-Path $sourceShapeDir "vaz.lods"

foreach ($requiredFile in @($sourceVazEdm, $sourceVazLods)) {
    if (-not (Test-Path $requiredFile)) {
        throw "Required VAZ source asset not found: $requiredFile"
    }
}

$modRoot = Join-Path $SavedGamesRoot ("Mods\tech\" + $ModName)
$databaseRoot = Join-Path $modRoot "Database"
$vehicleRoot = Join-Path $databaseRoot "vehicles\Unarmed"
$shapeRoot = Join-Path $modRoot "Shapes"

if ((Test-Path $modRoot) -and -not $Force) {
    throw "Mod folder already exists: $modRoot. Re-run with -Force to overwrite."
}

Ensure-Directory $modRoot
Ensure-Directory $databaseRoot
Ensure-Directory $vehicleRoot
Ensure-Directory $shapeRoot

Copy-Item -Path $sourceVazEdm -Destination (Join-Path $shapeRoot "vaz.edm") -Force
Copy-Item -Path $sourceVazLods -Destination (Join-Path $shapeRoot "vaz.lods") -Force

$maxRoadVelocityMps = [Math]::Round($MaxSpeedKph / 3.6, 6)
$maxAcceleration = [Math]::Round([Math]::Max($maxRoadVelocityMps / 4.0, 8.0), 6)
$enginePower = [Math]::Round([Math]::Max($MaxSpeedKph * 2.5, 400.0), 3)

$entryLua = @"
declare_plugin("$ModName", {
    installed      = true,
    state          = "installed",
    developerName  = "Local",
    version        = "1.0.0",
    dirName        = current_mod_path,
    shortName      = "$ModName",
    displayName    = "$UnitName",
})

mount_vfs_model_path(current_mod_path .. "/Shapes")

dofile(current_mod_path .. "/Database/db_units_cars.lua")

plugin_done()
"@

$dbUnitsCarsLua = @"
local plugin_db_path = current_mod_path .. "/Database/"

local function vehicle_file(f)
    if dofile(plugin_db_path .. f) then
        error("can't load file " .. f)
        return
    end

    if GT then
        GT.shape_table_data = {
            {
                file = GT.visual.shape,
                username = GT.Name,
                desrt = GT.visual.shape_dstr,
                classname = "lLandVehicle",
                positioning = "BYNORMAL",
                life = GT.life or 3,
            },
            {
                name = GT.visual.shape_dstr,
                file = GT.visual.shape_dstr,
            },
        }
        GT.MaxSpeed = GT.chassis and GT.chassis.max_road_velocity and (GT.chassis.max_road_velocity * 3.6)
        add_surface_unit(GT)
        GT = nil
    else
        error("GT empty in file " .. f)
    end
end

vehicle_file("vehicles/Unarmed/vaz_juiced.lua")
"@

$countriesLuaTable = @'
{
    "Russia",
    "USA",
    "UK",
    "France",
    "Germany",
    "Turkey",
    "Israel",
    "Georgia",
    "Ukraine",
    "Insurgents",
    "Abkhazia",
    "South Ossetia",
    "United Arab Emirates",
    "Saudi Arabia",
    "Iran",
    "Iraq",
    "Syria",
    "Lebanon",
    "Jordan",
    "Egypt",
    "China",
    "Belarus",
    "Kazakhstan",
    "Armenia",
    "Azerbaijan",
    "Pakistan",
    "India",
    "Algeria",
    "Libya",
    "Tunisia",
    "Morocco",
    "Nigeria",
    "South Africa",
    "Australia",
    "Canada",
    "Spain",
    "Italy",
    "Greece",
    "Norway",
    "Denmark",
    "Netherlands",
    "Belgium",
    "Poland",
    "Czech Republic",
    "Slovakia",
    "Hungary",
    "Romania",
    "Bulgaria",
    "Finland",
    "Sweden",
    "Switzerland",
    "Austria",
    "Japan",
    "South Korea",
}
'@

$vehicleLua = @"
GT = {}
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)

GT.chassis = {
    life = 1.5,
    mass = 1100,
    length = 4.1,
    width = 1.62,
    max_road_velocity = $maxRoadVelocityMps,
    max_slope = 0.32,
    fordingDepth = 0.35,
    engine_power = $enginePower,
    max_vert_obstacle = 0.24,
    max_acceleration = $maxAcceleration,
    min_turn_radius = 5.6,
    X_gear_1 = 1.18,
    Y_gear_1 = 0,
    Z_gear_1 = 0.76,
    X_gear_2 = -1.18,
    Y_gear_2 = 0,
    Z_gear_2 = 0.76,
    chassisDeepening = 0.02,
    gear_type = GT_t.GEAR_TYPES.WHEELS,
    r_max = 0.31,
    trace_width = 0.19,
    armour_thickness = 0.001,
    COM_pos = {0.0, 0.72, 0.0},
}

GT.visual.shape = "vaz"
GT.visual.shape_dstr = "vaz"

GT.IR_emission_coeff = 0.07

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.pos = {0.0, 1.25, 0.0}

GT.swing_on_run = false
GT.windscreen_wiper = 40

GT.visual.fire_size = 0.22
GT.visual.fire_pos[1] = 0.4
GT.visual.fire_pos[2] = 0.8
GT.visual.fire_pos[3] = 0.0
GT.visual.fire_time = 420
GT.visual.min_time_agony = 5
GT.visual.max_time_agony = 90
GT.visual.agony_explosion_size = 1.5
GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Car, {0, 0}, GT_t.IR_COEFFS_BODY, {0.12, 0.12/700}} }

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.15, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpit"

GT.Name = "$UnitName"
GT.DisplayName = _("$UnitName")
GT.DisplayNameShort = _("VJCD")
GT.Rate = 3

GT.DetectionRange = 0
GT.ThreatRange = 0
GT.mapclasskey = "P0091000212"
GT.attribute = {wsType_Ground, wsType_Tank, wsType_NoWeapon, wsType_GenericVehicle, "Cars"}
GT.category = "Unarmed"
GT.tags = {
    "Unarmed",
    "Civilian",
    "Cars",
}
GT.Countries = $countriesLuaTable
"@

$readme = @"
$UnitName mod scaffold created by create_vaz_juiced_mod.ps1.

Files created:
- entry.lua
- Database/db_units_cars.lua
- Database/vehicles/Unarmed/vaz_juiced.lua
- Shapes/vaz.edm
- Shapes/vaz.lods

Notes:
- The unit uses the stock DCS VAZ model assets.
- Requested top speed is $MaxSpeedKph km/h ($maxRoadVelocityMps m/s via max_road_velocity).
- The stock civilian VAZ Lua source is not exposed as a standalone file in this DCS install, so this mod defines a new light wheeled vehicle around the stock model rather than patching an original VAZ Car.lua.
"@

Write-Utf8NoBom -Path (Join-Path $modRoot "entry.lua") -Content $entryLua
Write-Utf8NoBom -Path (Join-Path $databaseRoot "db_units_cars.lua") -Content $dbUnitsCarsLua
Write-Utf8NoBom -Path (Join-Path $vehicleRoot "vaz_juiced.lua") -Content $vehicleLua
Write-Utf8NoBom -Path (Join-Path $modRoot "README.txt") -Content $readme

Write-Host ("Created mod: " + $modRoot)
Write-Host ("Unit name: " + $UnitName)
Write-Host ("Max speed: " + $MaxSpeedKph + " km/h")