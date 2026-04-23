
# 🚁 Urban Helicopter Sandbox - CSAR/SAR Missions

This is a open helicopter sandbox mission inspired by the "I Love This Job" mission pack! Experience diverse helicopter operations in an urban environment with voiceovers, combat scenarios, and randomly generated missions. Designed for quick gameplay sessions and short travel distance

The mission is designed around the Huey, but starting the game in multiplayer mode will allow you to use a dynamic spawn to use any chopper.  The game has not been tested extensively with multiple players.

## Version 0.4

v0.4 changelog

- SAR: Mission difficulty now based on clues to location of ambulance. Easy - smoke on ambulance. Medium - several fires, ambulance wthin 50m of one. Hard - Large auto wreck on roads, ambulance with 100m of wreck.  Very hard - no clues

- CSAR:  Mission difficulty now based on hostile presence.  Ambulance always gets smoke.  Easy: Light infantry Medium: light infantry and vehicles, Hard: MANPADS and everything in medium Very Hard: More units, all types.

- CSAR spotters and snipers:  You can now load two types of unit : spotters and snipers at any airbase, hospital landing pad or FARP.  Once loaded you can deploy them via new fastrope system.

- Fastroping - drop off new unit types on rooftops or ground without landing.  This is a two phase system.  In the first phase, stabilize above your intended drop off between 10-90 feet above.   When phase 1 completes, the point you are above becomes the target for phase 2 .  In phase 2, hover above the target location for 5 seconds to deploy unit.

- Spotters: When fastroped to ground or building, spotters will ID different infantry and vehicles on the F10 map and smoke their location.  Note that vehicles roam so this may not always reflect where they are.  Spotters spot units with 3km based on distance and elevation difference between the two - higher and closer = higher chance.  True LOS not checked here

- Snipers: Snipers allow the user to take out one spotted infantry unit instantly.  A spotter must be present and actively spotted a unit to use.  The snipers candidate targets show up on the F10 menu with probabilities of hitting - closer and higher is better like in spotters.

- (C)SAR: Instead of green smoke, police cars with flashing lights are present around the search radius of the rescue area.  F10 will allow you to smoke the perimeter if desired and remove the police vehicles (suggested if you use labels in game)

- Chase: The default DCS install doesn't include any fast moving vehicles. For users without mod there is now a script in the root of Github repo to create a duplicate of the VAZ car with sports car speed. This is highly recommended for making this mission more interesting.

- Many small fixes to overall mission



## 📦 Requirements

Both of these are optional but highly recommended.

**Highly Recommended Mod:**
- [Civilian Objects and Vehicles](https://forum.dcs.world/topic/270558-civilian-objects-and-vehicles/) [Direct Link (ZIP)](https://drive.google.com/file/d/1o8onBf1hnWX7bXY_951u0Pj_tIpv1dpX/view?usp=share_link) - Adds civilian vehicles like  ambulances and sports cars
- Mission will substitute with default DCS units if mod is not present

**Faster Vehicles (for chase mission)**

Chase missions work with stock vehicles but are easier to
- The release folder includes a script (`create_vaz_juiced_mod.ps1`)to create a modded version of the DCS Vaz car that travels very quickly, run the script and the mission will load the modded vehicle.  This makes the chase mission significantly more challenging and fun.


## 📋 Quick Start Guide

1. **Load the mission** in DCS World
2. **Spawn in your helicopter** (UH-1H recommended)
3. **Press F10** to open radio menu
4. **Select a mission type** or choose **"Start Day"** for a random shift of 3 missions
5. **Complete objectives** as described in mission briefing
6. **Land at hospitals** (blue circles on map) to deliver rescued personnel

---

## Table of Contents
- [Starting Missions](#starting-missions)
- [Mission Types](#mission-types)
  - [CSAR / SAR](#1-csar--sar-combat--search-and-rescue)
  - [VIP Mission](#2-vip-mission)
  - [Chase Mission](#3-chase-mission)
  - [Ambulance Under Attack](#4-ambulance-under-attack)
  - [Vehicle Inspection](#5-vehicle-inspection-mission)
  - [Rooftop Pickup](#6-rooftop-pickup)
  - [Cargo Transport](#7-cargo-transport-mission)
  - [Hospital Transfer](#8-hospital-transfer-mission)
  - [Container Rescue](#9-container-rescue-mission)
  - [Highway Rescue](#10-highway-rescue-mission)
  - [Speed Trap](#11-speed-trap-mission)
- [Advanced CSAR Features](#advanced-csar-features-troop-support)
- [Additional Features](#additional-features)
- [Mission Editor Guide](#mission-editor-guide-adding-new-townscities)
- [Troubleshooting](#troubleshooting)


---



## Starting Missions

### 🎯 Single Mission Mode
Use the **F10 Radio Menu** to select individual missions on demand:

1. Press **F10** in-game
2. Navigate to the mission type submenu
3. Select difficulty level (where applicable)
4. Mission spawns immediately - check F10 map for location

**Available Missions:**
- 🔴 **CSAR** (Combat Search And Rescue) - 4 difficulty levels:
  - Easy: Infantry only
  - Medium: Vehicles and infantry
  - Hard: Heavy resistance with MANPADS
  - Very Hard: Very heavy resistance with MANPADS
- 🟢 **SAR** (Search And Rescue, no hostiles) - 4 difficulty levels:
  - Easy: Exact location + orange smoke
  - Medium: Nearby fires (decoy)
  - Hard: Nearby accident scene
  - Very Hard: No hints
- 👔 **VIP Mission** - Destroy convoy, extract VIP
- 🏎️ **Chase Mission** - Track and eliminate speeding vehicle (Easy/Hard)
- 🚑 **Ambulance Under Attack** - Defend ambulance (Easy/Medium/Hard)
- 🔍 **Vehicle Inspection** - Investigate suspicious vehicles
- 🏢 **Rooftop Pickup** - Precision rooftop landing and extraction
- 📦 **Cargo Transport** - Transport cargo via internal loading or slingload (5 difficulties)
- 🏥 **Hospital Transfer** - Inter-hospital patient transport with diversion chance
- 🚢 **Container Rescue** - Hoist container to free trapped worker
- 🛣️ **Highway Rescue** - SAR/CSAR at highway accident with traffic jam (when highway cache available)
- 🚔 **Speed Trap** - Monitor highway traffic and ticket speeders (debug mode + highway cache)

### 🔄 Shift Mode ("Start Day")
Experience extended gameplay with **3 consecutive random missions**:

1. Press **F10** → **"Start Day"**
2. Complete your first mission
3. After **10 seconds**, next mission spawns automatically
4. Progress counter displays (e.g., "Job 2 of 3")
5. Final mission completion message ends your shift

**Features:**
- ✅ Missions selected randomly from all types
- ✅ Includes Highway Rescue when highway cache is loaded
- ✅ Includes Speed Trap only when enabled in `DayShiftConfig` and running in debug mode
- ✅ Automatic queueing and progression
- ✅ No menu interaction needed between jobs
- ✅ Can cancel mid-shift: F10 → "Cancel Current Mission"

**Mission Pool:**
- The mission pool is controlled by `DayShiftConfig` in `missions/citysar2.lua`
- Depending on configuration and map prerequisites, the pool can include:
   - CSAR/SAR scenarios (including protest and naval variants)
   - VIP, Chase, Vehicle Inspection
   - Cargo Transport, Container Rescue, Hospital Transfer
   - Highway Rescue (when highway cache is loaded)
   - Speed Trap (debug mode + highway cache)

---

## Mission Types

### 1. CSAR / SAR (Combat / Search and Rescue)

**Objective:** Locate a crash site, rescue survivor(s), and deliver them to the nearest hospital.

#### Difficulty Levels

**SAR (Non-Hostile) - Search & Navigation Challenge:**
| Difficulty | F10 Map Marker | Search Radius | Visual Aids |
|------------|----------------|---------------|-------------|
| Easy | ✅ Ambulance shown | 1000m | White ambulance + orange smoke |
| Medium | ❌ No marker | 1000m | White ambulance + multiple fires (decoys) |
| Hard | ❌ No marker | 1000m | White ambulance + accident wreckage |
| Very Hard | ❌ No marker | 1250m | No visual aids - pure search |

**CSAR (Hostile) - Combat + Search Challenge:**
| Difficulty | F10 Map Marker | Search Radius | Enemy Composition |
|------------|----------------|---------------|-------------------|
| Easy | ✅ Ambulance shown | 1000m | 5 infantry units only |
| Medium | ✅ Ambulance shown | 1000m | 8+ units: Infantry + Light Vehicles |
| Hard | ✅ Ambulance shown | 1000m | 15+ units: Infantry + Vehicles + MANPADS (max 2) |
| Very Hard | ✅ Ambulance shown | 1000m | 20+ units: Maximum hostiles + MANPADS (max 2) |

**Key Differences:**
- **SAR Focus:** Navigation and search difficulty - only Easy shows ambulance on map
- **CSAR Focus:** Combat difficulty - ambulance ALWAYS on map (1000m radius), enemy strength scales
- **Orange Smoke:** Available for SAR Easy and ALL CSAR difficulties (marks ambulance location)

#### How to Complete
1. 📍 Check **F10 map** for crash site location (precision depends on difficulty)
2. 🚁 Fly to the search area
3. 👀 Locate the crash site (look for smoke, wreckage, flares)
4. ⬇️ **Land on the ground** near the crash site (not hovering!)
5. ⏱️ **Remain landed for 10 seconds** - survivors board automatically
6. 📦 Notice weight increase as patients load
7. 🏥 Fly to nearest **Hospital (LZ)** - marked with **blue circles** on F10 map
8. ⬇️ **Land in hospital zone for 10 seconds** to unload
9. ✅ Mission complete!

#### Optional: Hover Timer
- **F10 → "Hover Timer: ON/OFF"**
- When **ON**: Hovering near crash site (without landing) shows guidance timer
- Useful for pinpointing exact landing locations in dense terrain
- Default: OFF

#### Advanced: Tactical Support
For CSAR missions with heavy resistance, see [Advanced CSAR Features](#advanced-csar-features-troop-support) below:
- 🪖 **Troop Loading System** - Load spotters and snipers at airfields before mission
- 🪢 **Fast-Rope Deployment** - Deploy troops via fast-rope into hostile zones
- 💨 **Green Smoke Markers** - Request perimeter smoke to visualize 1000m search boundary

**Most useful for:** Medium, Hard, and Very Hard CSAR (when facing vehicles and MANPADS)

---

### 2. VIP Mission

**Objective:** Intercept a terrorist convoy transporting a VIP, eliminate escorts, then rescue the VIP.

#### How to Complete
1. 📡 Accept mission - convoy spawns and location is provided
2. 🎯 Fly to convoy location
3. 💥 **Engage and destroy escort vehicles** (avoid hitting the VIP vehicle!)
4. ⏸️ Wait for VIP to exit vehicle after escorts are eliminated
5. ⬇️ **Land near VIP** to pick them up
6. 🏥 Transport to nearest **hospital (LZ)**
7. ⬇️ **Land at hospital for 10 seconds** to drop off
8. ✅ Mission complete!

**Tips:**
- Identify the VIP vehicle carefully - destroying it fails the mission
- Use precision weapons to avoid collateral damage
- VIP won't exit until all escorts are neutralized

---

### 3. Chase Mission

**Objective:** Track down and eliminate a dangerous driver in a modified sports car.

**Target Vehicle:**
- 🔴 Red sports car (VAZ, optionally with "juiced" modifications)
- 💨 Turbocharged engine emits visible exhaust plumes
- 🛣️ Drives randomly through city zones on roads
- ⚡ Changes direction every ~30 seconds
- 🚀 **With "juiced" mod:** Significantly faster, more challenging to intercept

**Tip:** See [Requirements](#-requirements) section for optional "VAZ Juiced" mod installation.

#### Difficulty: Easy Mode
1. 🎆 Car emits **colored smoke/flares** every 3 seconds for easy visual tracking
2. 👀 Locate the vehicle using smoke trails
3. 💥 **Destroy the target** - mission complete!

#### Difficulty: Hard Mode
**Requires positive identification before engagement!**

1. 👀 Locate target using exhaust plumes (no colored smoke in Hard mode)
2. 🎯 **Positive ID required:**
   - Position within **85 meters** directly behind vehicle
   - Stay within **75° rear cone** (behind the car)
   - Maintain position for **10 seconds**
3. ✅ Confirmation message: "Target identified"
4. ⏳ **Wait for authorization** message
5. 💥 **Engage and destroy** after clearance

**Tips:**
- Follow roads in city zones - vehicle stays on road network
- Watch for exhaust plumes to track movement
- In Hard mode, patience is key - don't engage before authorized!

---

### 4. Ambulance Under Attack

**Objective:** Defend an ambulance (M-113 APC) under heavy enemy attack.

#### Difficulty Levels
| Difficulty | Spawn Distance | Response Time | Intensity |
|------------|----------------|---------------|-----------|
| Easy | 4-5 km | ~3-4 min | Standard |
| Medium | 2.5-3.5 km | ~2 min | Moderate |
| Hard | 1-2 km | ~1 min | Intense |

**Enemy Composition:**
- 👥 Infantry squads (2-4 soldiers each)
- 🚙 Armed vehicles (M-1043 HMMWV, Tigr, or BTR-80)
- Multiple groups spawning simultaneously

#### How to Complete
1. 🚨 Mission spawns - ambulance location on F10 map
2. 🚁 **Fly to location immediately** (time is critical on higher difficulties!)
3. 💥 **Eliminate all hostile forces**
4. 🛡️ **Keep ambulance alive** - if destroyed, mission fails
5. ✅ Mission complete when all enemies neutralized

**Tips:**
- 🎯 Prioritize threats closest to ambulance
- 🔄 Use terrain and angles to protect the ambulance while engaging
- 🏃 On Hard difficulty, every second counts - fly low and fast!

---

### 5. Vehicle Inspection Mission

**Objective:** Investigate suspicious abandoned vehicles to find the target and complete follow-up task.

**Scenario:** Intelligence reports 5 suspicious vehicles (sports cars) abandoned on roads within 2km radius. One is the target vehicle.

#### How to Complete
1. 📍 5 vehicles spawn on random roads within 2km of your position
2. 🔍 **Inspect each vehicle:**
   - ⬇️ **Land within 25 feet** of the vehicle
   - ⏱️ **Stay landed for 5 seconds**
   - ✅ Inspection confirmed with message
3. 🎯 **Target identified** - you'll receive specific instructions
4. 📋 **Complete follow-up task** (varies - may involve transport, elimination, or other objectives)
5. ✅ Mission complete!

**Possible Outcomes:**
- 💣 Vehicle contains explosives - transport bomb squad
- 🔫 Vehicle linked to terrorist - eliminate target
- 🚁 Vehicle requires airlift to secure location
- ℹ️ Vehicle contains intelligence - secure and report

**Tips:**
- 👀 Look for vehicles on roads within the 2km search area
- 🗺️ Use F10 map to plan inspection route efficiently
- ✈️ Low-altitude flight helps spot vehicles on roads

---

### 6. Rooftop Pickup

**Objective:** Execute precision rooftop landing to extract personnel from urban buildings.

**Challenge:** This is an advanced hovering/landing task requiring precise positioning and cargo door alignment.

#### How to Complete
1. 📍 Mission provides rooftop location on F10 map
2. 🚁 Navigate to building
3. 🎯 **Precision landing required:**
   - Must land on rooftop surface
   - **Cargo door must face the person** (perpendicular alignment)
   - Person jumps into helicopter when positioned correctly
4. ⚖️ Weight increases when person boards
5. 🏥 Transport to designated location (usually hospital LZ)
6. ⬇️ Land to drop off
7. ✅ Mission complete!

**Critical:**
- ⚠️ If you lose stable hover after person boards, they may fall out!
- 🎯 Precise door alignment is essential (imagine person jumping through cargo door)
- 🏢 Rooftop space is limited - careful approach required

**Tips:**
- 🐌 Approach slowly and establish stable hover first
- 🧭 Position cargo door side toward the person before landing
- ⬇️ Gentle touchdown - abrupt movements may destabilize
- 🔒 Maintain stable hover during boarding process

---

### 7. Cargo Transport Mission

**Objective:** Transport cargo (internal or slingload) from pickup zone to delivery zone.

**16 Cargo Types Across 5 Weight Tiers:**
- **Tier 1** (100-200kg): Medical Supplies, Ammo Crate, Small Pipes
- **Tier 2** (250-400kg): Food Rations, M117 Bombs, Fuel Barrels, Tetrapod
- **Tier 3** (500-600kg): Ammo Box, UH-1H Cargo Net, Construction Materials
- **Tier 4** (800-1200kg): ISO Containers, Large Pipes, Shipping Container, Fuel Tank
- **Tier 5** (1400-1500kg): Oil Tank, Full ISO Container

#### Difficulty Levels

| Difficulty | Distance Range | Cargo Weight Tier |
|------------|----------------|-------------------|
| Easy (1) | <5 NM | Light (Tier 1-2) |
| Medium (2) | 5-10 NM | Medium (Tier 2-3) |
| Hard (3) | 10-15 NM | Heavy (Tier 3-4) |
| Very Hard (4) | 15-20 NM | Very Heavy (Tier 4-5) |
| Extreme (5) | 20+ NM | Extreme (Tier 5) |

#### How to Complete

**Method 1: Internal Loading (Light Cargo Only)**
1. 📍 Fly to **pickup zone** (marked on F10 map)
2. 🛬 **Land in the zone**
3. 📦 **F10 → "Load [CargoName] (Xkg) - Internal"**
4. ⚖️ Weight increases - helicopter performance affected
5. 🚁 Fly to **delivery zone** (marked on F10 map)
6. 🛬 **Land in delivery zone**
7. 📤 **F10 → "Unload [CargoName] (Xkg)"**
8. ✅ Mission complete!

**Method 2: Slingload (All Cargo Types)**
1. 📍 Fly to **pickup zone**
2. 👀 Locate cargo static object on ground
3. 🪝 **Attach slingload** using standard DCS slingload mechanics
4. 🚁 Fly to **delivery zone**
5. 🛬 **Land or hover low** in delivery zone
6. 🪝 **Release slingload** - cargo must touch ground in zone
7. ✅ Mission complete!

**Requirements:**
- ⚠️ **At least 2 cargo zones required** (see Mission Editor Guide for `CARGO_` zones)
- Menu option only appears when cargo zones exist

**Tips:**
- 📊 Heavier cargo = more performance impact on helicopter
- 🎯 Slingload recommended for heavy cargo (better weight distribution)
- 🌬️ Wind and turbulence affect slingload stability
- 🗺️ Use F10 map smoke markers to identify zones from distance
- ⚖️ Internal cargo weight is cumulative with troops (spotters/snipers)

---

### 8. Hospital Transfer Mission

**Objective:** Transport a critical patient from one hospital to another.

#### How to Complete
1. 🏥 Mission briefing provides origin hospital (green circle on F10 map)
2. 🚁 Fly to **origin hospital** (green circle marker)
3. 🛬 **Land in zone for 10 seconds** - patient loads automatically
4. ⚖️ Weight increases when patient boards
5. 🚁 Fly to **destination hospital** (red circle marker)
6. ⚠️ **10% chance of mid-flight diversion!**
   - New red circle appears if diverted
   - Message: "Diversion! Patient condition changed - proceed to [new hospital]"
7. 🛬 **Land at destination for 10 seconds** to unload
8. ✅ Mission complete!

**Requirements:**
- ⚠️ **At least 2 hospital zones required** (standard `LZ_` zones)
- Menu option only appears when sufficient hospitals exist

**Assistance Menu (F10):**
- 💨 **"Smoke Origin Hospital"** - Orange smoke at pickup location
- 💨 **"Smoke Destination Hospital"** - Orange smoke at current destination

**Tips:**
- 🗺️ Watch for red circle changes (diversion notification)
- 💨 Use smoke markers in low visibility conditions
- ⏱️ Time-sensitive - patient is critical
- 🏥 Hospital zones are same as CSAR/SAR landing zones

---

### 9. Container Rescue Mission

**Objective:** Industrial accident - worker trapped between shipping containers. Hoist one container away to free the worker, then transport them to hospital.

**Mission Phases:**

#### Phase 1: Free the Worker (Hoist)
1. 📍 Mission spawns at random **cargo zone**
2. 🚁 Fly to accident site
3. 👀 Locate **2 ISO containers** side by side (~3m gap)
4. 👷 Worker trapped between containers
5. 🪝 **Attach slingload to one container**
6. 🚁 **Hoist container >5 meters** away from spawn point
7. ✅ Worker freed - mission transitions to Phase 2

#### Phase 2: Standard Rescue
8. 🏥 Mission becomes standard CSAR/SAR rescue
9. 🛬 **Land near freed worker** to pick up
10. 🚁 Fly to nearest **hospital**
11. 🛬 **Land at hospital for 10 seconds** to deliver
12. ✅ Mission complete!

**Scene Elements:**
- 🚢 2 ISO containers (side by side, slingloadable)
- 🚑 Ambulance nearby
- 👷 Multiple worker units scattered around scene

**Requirements:**
- ⚠️ **At least 1 cargo zone required** (see Mission Editor Guide for `CARGO_` zones)
- Menu option only appears when cargo zones exist

**Tips:**
- 🪝 Either container works - hoist whichever has better approach
- 📏 Must move container at least 5m from original position
- ⚖️ ISO containers are heavy (~1000kg) - affects helicopter performance
- 🚁 Release container away from scene before returning for worker pickup
- 🏥 Blue circles on F10 map show hospital landing zones

---

### 10. Highway Rescue Mission

**Objective:** Highway accident scene with massive traffic jam. Standard CSAR/SAR rescue within realistic traffic environment.

**Scene Elements:**
- 🚑 Ambulance at accident site
- 🚗 **50+ civilian vehicles** creating traffic jam
- 🗺️ **Flood-fill F10 map markers** showing traffic extent
- 🚨 Police vehicles may be present

#### How to Complete
1. 📍 Check F10 map for accident location (marked by traffic markers)
2. 🚁 Fly to highway segment
3. 🔍 Locate ambulance among traffic vehicles
4. ⬇️ **Land near ambulance for 10 seconds** to load patient(s)
5. 🏥 Fly to nearest **hospital** (blue circle on map)
6. ⬇️ **Land at hospital for 10 seconds** to unload
7. ✅ Mission complete - all traffic vehicles cleaned up automatically

**Mission Variants:**
- Can be **SAR** (no hostiles) or **CSAR** (with hostile forces)
- Uses standard difficulty system from base CSAR/SAR missions
- All advanced CSAR features available (fast-rope, spotters, snipers)

**Requirements:**
- ⚠️ **Highway cache must be loaded** (HighwayPointCache)
- ⚠️ **Minimum 5km continuous highway segment** required
- Only appears in mission menu when cache available

**Highway Cache Setup:**
- Generate/update highway cache via harness suite:
   - `./scripts/testing/run_dcs_e2e_harness.ps1 -MissionPath ./mission_files/leb.miz -TestSuites "highway_gen"`
- Cache file should exist at `tools/highway_cache/highway_cache.lua`

**Availability:**
- 🎲 Included in "Start Day" random rotation when highway cache loaded
- 🎯 Can be selected manually from F10 menu (when available)

**Tips:**
- 🗺️ F10 map markers show traffic extent - very helpful for navigation
- 🚗 50+ traffic vehicles make visual spotting challenging
- 🔍 Look for ambulance among civilian traffic
- 💨 Standard assistance options available (smoke, flares)
- 🧹 All traffic vehicles auto-cleanup on mission end (no manual cleanup needed)

---

### 11. Speed Trap Mission

**Objective:** Monitor highway traffic and ticket speeding vehicles. Timed mission (5 minutes) with scoring based on successful tickets.

**Mission Mechanics:**

#### Setup
- 🛣️ Longest available highway segment selected automatically
- 🚨 Police cars stationed at both ends with flashing lights
- 🗺️ Highway segment marked with circles on F10 map
- 🚗 Civilian traffic spawns from alternating ends

#### Traffic Composition
- ✅ **~80% legal traffic** (50-60 km/h in 60 km/h zone)
- 🚨 **~20% speeders** (80-120 km/h)
- 🛡️ **All vehicles immortal** (can't be destroyed)

#### How to Complete
1. 🚁 Fly to marked highway segment
2. 🎯 **Hover over highway** to monitor traffic
3. 🔫 **Shoot vehicle to "radar" it** (triggers S_EVENT_HIT)
   - Vehicle is unharmed (immortal)
   - Speed measured automatically
4. 🚨 **If speeding:** Police car dispatched automatically
5. 👮 Police pulls over speeder (within 20m = ticket issued)
6. ⏱️ **Mission ends after 5 minutes**
7. 📊 **Score displayed:** Ticketed speeders / Total speeders

**Scoring:**
- ✅ Perfect: All speeders ticketed
- 🎯 Good: 75%+ speeders ticketed
- ⚠️ Fair: 50%+ speeders ticketed
- ❌ Poor: <50% speeders ticketed

**Requirements:**
- ⚠️ **Debug mode only** (`_debug = true`)
- ⚠️ **Highway cache must be loaded** (HighwayPointCache)
- ⚠️ **Minimum 2km highway segment** required
- Only appears in mission menu when cache available

**Availability:**
- 🎲 Included in "Start Day" random rotation when highway cache loaded
- 🎯 Can be selected manually from F10 menu (when available)

**Tips:**
- 🎯 Position directly over highway for best coverage
- 🔫 Use tracers to confirm hits on vehicles
- 👀 Speeders often pass multiple legal vehicles quickly
- 🚨 Police need time to reach and pull over speeders
- ⏱️ Radar vehicles early in 5-minute window (gives police time)
- 📊 Not all speeders need tickets - score is percentage-based
- 🚁 Low hover (<50m) recommended for accurate vehicle targeting

---

## Advanced CSAR Features: Troop Support

### 🪖 Troop Loading System

**Available during CSAR missions when landed at airfields or spawn points.**

Load specialized troops to assist with hostile rescue operations:

#### Spotters (Reconnaissance)
- **Limit:** 3 per mission
- **Role:** Provide reconnaissance and enemy detection
- **Weight:** Adds cargo weight to helicopter
- **Deployment:** Fast-rope into crash site area

#### Snipers (Fire Support)
- **Limit:** 1 per mission
- **Role:** Provide precision fire support against hostiles
- **Weight:** Adds significant cargo weight
- **Deployment:** Fast-rope into overwatch positions

#### How to Load Troops
1. 🛬 **Land at any airfield or designated spawn point**
2. ✅ **F10 menu updates automatically** - "Load Troops" submenu appears
3. 📋 **Select troop type:**
   - "Load Spotter (X of 3 left)"
   - "Load Sniper (X of 1 left)"
4. ⚖️ **Weight increases** - notice helicopter performance change
5. 🚁 **Take off** - troops remain in aircraft until deployed or unloaded
6. 🔄 **Unload option** - "Unload All Troops" returns them to base

**Notes:**
- Troop limits are **per mission** (resets when new mission starts)
- Menu only appears when landed near airfield/spawn

---

### 🪢 Fast-Rope Deployment

**Deploy loaded troops via fast-rope during CSAR missions in hostile areas.**

#### Deployment Process

**1. Arm Deployment System**
- **F10 → "Fastrope Spotter"** or **"Fastrope Sniper"**
- System armed - deployment sequence begins
- Status message confirms readiness

**2. Position Over Drop Zone**
- Fly to desired deployment location
- Altitude: **10-30 meters AGL** (above ground level)
- Hover Requirements:
   - ✅ Stable position (minimal drift)
   - ✅ Low vertical speed
   - ✅ Correct altitude range

**3. Lock-In Sequence**
- When hovering correctly, **lock-in timer starts** (takes several seconds)
- On-screen guidance shows:
   - Current altitude
   - Hover stability status
   - Lock-in progress
- **Maintain stable hover!** Movement breaks lock

**4. Deployment**
- After successful lock-in, **troop deploys automatically**
- Confirmation message displays
- Troop spawns on ground at drop point
- System disarms - ready for next troop (if available)


#### Deployed Troop Behavior
- **Spotters:** Move to observation positions, provide enemy detection
- **Snipers:** Take overwatch positions, engage threats at range
- **Both:** Focus on protecting crash site and helicopter
- **Permanent:** Troops remain deployed for entire mission



### 💨 Green Smoke Perimeter Markers

**Request smoke markers to mark search area boundaries.**

#### When Available
- **All CSAR missions** (all difficulties have 1000m search radius)
- **All SAR missions** (Easy: 1000m, Medium: 1000m, Hard: 1000m, Very Hard: 1250m)
- Menu option appears automatically when search radius exists

#### How to Use
1. **F10 → "Request smoke around perimeter"**
2. **Green smoke grenades** deploy around search area perimeter (in circle pattern)
3. **Police units** automatically cleared from area (if present)
4. **Visual reference** - helps identify search boundary from air

**Note:** Even when ambulance is marked on F10 map (SAR Easy, all CSAR), green smoke still helps visualize the search radius boundary from the air.

#### Tactical Benefits
- ✅ Clearly marks search area edges
- ✅ Provides visual waypoints while searching
- ✅ Helps coordinate with other aircraft (multiplayer)
- ✅ Useful in poor visibility or at night

**Note:** Smoke dissipates after several minutes - use when needed, not automatically.

---

## Additional Features

### 🎮 F10 Radio Menu Options

**Hover Timer Toggle**
- **F10 → "Hover Timer: ON/OFF"**
- Enables guidance when hovering (not landing) near crash sites
- Helps pinpoint exact rescue locations in difficult terrain
- Useful for CSAR/SAR missions in forests or dense urban areas

**Mission Cancellation**
- **F10 → "Cancel Current Mission"**
- Immediately cancels active mission
- Required before starting a new single mission if one is active
- Shift mode jobs queue automatically (no cancellation needed between jobs)

### 🌍 Global Events (Advanced)

**Rooftop MANPADS**
- Spawns anti-air threats on rooftops in nearest city zone
- Adds hostile SAM challenge to missions
- Use for advanced difficulty scenarios

**Helicopter Hunt**
- Spawns multiple armed ground vehicles that actively pursue your helicopter
- Creates dynamic combat scenarios
- High-intensity option for experienced pilots

---

## Mission Editor Guide: Adding New Towns/Cities

Want to expand the mission to new maps or add more locations? You'll need to define trigger zones in the DCS Mission Editor.

### Zone Types Overview

| Zone Type | Prefix | Purpose | Example |
|-----------|--------|---------|---------|
| **City Zone** | `city_` | Mission spawn areas | `city_beirut` |
| **Landing Zone** | `LZ_` | Hospital drop-off points | `LZ_hospital1` |
| **Cargo Zone** | `CARGO_` | Cargo pickup/delivery | `CARGO_port`, `CARGO_warehouse` |

### Creating City Zones

City zones define where missions spawn (crash sites, vehicles, enemies, rooftops, etc.).

**Step-by-Step:**

1. Open your mission in **DCS Mission Editor**
2. Go to **Triggers** tab
3. Click **New** to create a trigger zone
4. **Configure the zone:**
   - **Name:** `city_<name>` (e.g., `city_damascus`, `city_tripoli`)
   - ⚠️ **Must start with lowercase `city_`** (case-sensitive!)
5. **Position:** Place zone over the town/city on the map
6. **Radius:** Set to cover the populated area
   - Small town: 2000-3000m
   - Medium city: 4000-6000m
   - Large city: 7000-10000m
7. Click **OK** to save

**What City Zones Control:**
- ✅ CSAR/SAR crash sites (100 random locations generated per zone)
- ✅ Chase mission vehicle routes (drives on roads in zone)
- ✅ Rooftop mission building selection
- ✅ Vehicle inspection spawn locations
- ✅ Enemy spawn boundaries

### Creating Landing Zones (Hospitals)

Landing zones are where rescued personnel must be delivered.

**Step-by-Step:**

1. In **Triggers** tab, click **New**
2. **Configure the zone:**
   - **Name:** `LZ_<name>` (e.g., `LZ_beirut_hospital`, `LZ_field_hospital`)
   - ⚠️ **Must start with uppercase `LZ_`** (case-sensitive!)
3. **Position:** Place at hospital/helipad location
4. **Radius:** 100-300m (allows landing tolerance)
   - Helipad: 50-100m
   - Hospital courtyard: 150-250m
   - Large hospital complex: 300-500m
5. Click **OK** to save

**What Landing Zones Do:**
- ✅ Automatically marked on F10 map with **blue circles** and "HOSPITAL" label
- ✅ CSAR/SAR/VIP missions require landing here to complete
- ✅ Hospital Transfer missions use these as origin/destination
- ✅ Must land and stay stationary for 10 seconds

### Creating Cargo Zones

Cargo zones define pickup and delivery locations for cargo transport and container rescue missions.

**Step-by-Step:**

1. In **Triggers** tab, click **New**
2. **Configure the zone:**
   - **Name:** `CARGO_<name>` (e.g., `CARGO_port`, `CARGO_warehouse`, `CARGO_airfield`)
   - ⚠️ **Must start with uppercase `CARGO_`** (case-sensitive!)
3. **Position:** Place at logical cargo areas
   - Port/dock areas
   - Warehouse districts
   - Industrial zones
   - Airfield cargo areas
   - Military supply depots
4. **Radius:** 200-500m recommended
   - Small facility: 200-300m
   - Medium facility: 300-400m
   - Large complex: 400-500m
5. Click **OK** to save

**What Cargo Zones Do:**
- ✅ Enable **Cargo Transport Mission** (requires minimum 2 zones)
- ✅ Enable **Container Rescue Mission** (requires minimum 1 zone)
- ✅ Mission selects random pickup/delivery zones based on difficulty
- ✅ Marked with smoke on F10 map during active cargo missions

**Cargo Zone Best Practices:**
- ✅ Create **at least 3-4 zones** for variety
- ✅ Place near roads or open areas (for civilian traffic)
- ✅ Ensure flat terrain suitable for cargo spawning
- ✅ Spread zones across map for distance variety
- ✅ Consider realistic locations (ports, warehouses, bases)

### Example Mission Setup

**Lebanon Urban Operations:**

```
City Zones:
├── city_beirut (radius: 6000m) - Main urban area
├── city_tripoli (radius: 4000m) - Northern city
├── city_sidon (radius: 3000m) - Southern coastal town
└── city_jounieh (radius: 2500m) - Secondary location

Landing Zones:
├── LZ_beirut_hospital (radius: 200m) - Main hospital
├── LZ_beirut_airport (radius: 300m) - Airport medical
├── LZ_tripoli_hospital (radius: 200m) - Northern hospital
├── LZ_field_hospital (radius: 150m) - Military field hospital
└── LZ_rafic_hariri (radius: 250m) - International airport
Cargo Zones:
├── CARGO_beirut_port (radius: 400m) - Port cargo area
├── CARGO_beirut_warehouse (radius: 300m) - Industrial district
├── CARGO_tripoli_dock (radius: 350m) - Northern port
└── CARGO_rafic_hariri_cargo (radius: 400m) - Airport cargo terminal```

### Best Practices

**City Zones:**
- ✅ Cover entire urban areas including suburbs
- ✅ Ensure zones contain road networks (vehicles spawn on roads)
- ✅ Avoid placing entirely over water or mountains
- ✅ Multiple smaller zones better than one massive zone
- ✅ Test by starting missions to verify spawn locations

**Landing Zones:**
- ✅ Place near actual hospital buildings or helipads for realism
- ✅ Ensure flat terrain suitable for helicopter landing
- ✅ Create multiple LZs for variety and strategic choices
- ✅ Don't overlap city zones (optional, not required)
- ✅ Mark on briefing map for player reference

**Cargo Zones:**
- ✅ Place at logical cargo handling locations (ports, warehouses, airfields)
- ✅ Ensure flat, open terrain for cargo spawning
- ✅ Create at least 2 zones to enable cargo missions (3-4 recommended)
- ✅ Spread across map for distance-based difficulty
- ✅ Consider proximity to roads for container rescue traffic

### Testing Your Configuration

1. Load mission in DCS
2. Press **F10** → Start **CSAR** mission
3. Verify:
   - ✅ Crash site appears within city zone
   - ✅ Hospital LZ marked on map with blue circle
   - ✅ Landing at LZ completes mission
4. Test multiple mission types to ensure all zones function
5. Adjust radii if spawns feel too clustered or sparse

---

## Troubleshooting

### Common Issues

**❌ "No missions found" or missions unavailable**
- **Cause:** Missing required trigger zones for mission type
- **Fix:** Add required zones in Mission Editor:
  - City zones (`city_<name>`) - Required for most missions
  - Landing zones (`LZ_<name>`) - Required for CSAR/SAR/VIP/Hospital Transfer
  - Cargo zones (`CARGO_<name>`) - Required for Cargo Transport and Container Rescue
- **Verify:** Zones must have correct prefix (case-sensitive!)

**❌ "No city zone found" for Chase/Vehicle missions**
- **Cause:** Vehicle-based missions require city zones with road networks
- **Fix:** Create `city_` zones that include roads and urban areas
- **Note:** Works best with civilian vehicle mod installed

**❌ Hospital not showing on map**
- **Cause:** Landing zone naming or configuration issue
- **Fix 1:** Verify zone uses `LZ_` prefix (uppercase, case-sensitive!)
- **Fix 2:** Check zone radius is reasonable (100-500m)
- **Fix 3:** Ensure zone is in mission editor (Triggers tab)

**❌ Patient won't load at crash site**
- **Cause:** Not properly landed or not waiting long enough
- **Fix 1:** Must be **fully landed on ground** (not hovering!)
- **Fix 2:** Stay **completely stationary for 10 seconds**
- **Fix 3:** Verify you're at crash site, not hospital
- **Tip:** Enable "Hover Timer" (F10 menu) for guidance

**❌ Chase mission vehicle not spawning**
- **Cause:** Civilian vehicle mod not installed, or city zone has no roads
- **Fix 1:** Install [Civilian Objects and Vehicles mod](https://forum.dcs.world/topic/270558-civilian-objects-and-vehicles/)
- **Fix 2:** Ensure city zone covers areas with road networks
- **Note:** Mission substitutes default vehicles if mod missing

**❌ Cargo mission or Container Rescue unavailable**
- **Cause:** No cargo zones defined or insufficient zones
- **Fix:** Add at least 2 `CARGO_` zones in Mission Editor (Triggers tab)
- **Verify:** Zone names start with uppercase `CARGO_` (case-sensitive!)
- **Note:** Container Rescue needs only 1 zone; Cargo Transport needs 2+

**❌ Highway Rescue or Speed Trap unavailable**
- **Cause:** Highway cache not loaded or insufficient highway segments
- **Note:** These missions require pre-generated highway point cache
- **Fix:** Highway cache is theatre-specific and loaded automatically when available
- **Verify:** Check for "Start Day" menu - these missions appear in rotation if cache loaded

**❌ Cargo won't load/unload**
- **Cause 1:** Not in correct zone or not landed
- **Fix 1:** Land inside pickup/delivery zone (check F10 map for zone circles)
- **Cause 2:** Trying to load heavy cargo internally
- **Fix 2:** Use slingload for Tier 4-5 cargo (800kg+); only light cargo can load internally
- **Cause 3:** Already carrying cargo
- **Fix 3:** Unload current cargo before picking up new cargo

**❌ Rooftop pickup person won't board**
- **Cause:** Cargo door not aligned with person
- **Fix:** Position helicopter so **cargo door faces the person**
- **Tip:** Person must be able to "jump into" cargo door area
- **Critical:** Maintain stable hover during boarding

**❌ Mission won't cancel**
- **Cause:** Mission state issue
- **Fix 1:** Land and wait 15 seconds, then try F10 → Cancel
- **Fix 2:** Complete or fail current mission
- **Last Resort:** Restart DCS mission

### Performance Issues

**🐌 Low FPS in urban areas**
- Reduce civilian vehicle density (if using mod)
- Lower graphics settings (shadows, visibility range)
- Disable VR supersampling if applicable

**⏱️ Mission spawn delays**
- Normal on first mission startup (zone scanning)
- Subsequent missions should spawn quickly
- Allow 5-10 seconds for generation on large maps

---

## Support & Community

**Found a bug or have suggestions?**
- Check the [GitHub Issues](https://github.com/yourusername/CSARLEB/issues) page
- Report gameplay issues with DCS log file (`Saved Games/DCS/Logs/dcs.log`)

**Want to contribute?**
- See developer documentation in [`memory/`](./memory/) directory
- Review [Contributing Guidelines](./CONTRIBUTING.md)

**Optional Enhancements:**
- 🗣️ **TTS Voice Generation:** See [TTS_README.md](./TTS_README.md) for voice-over setup
- 🚗 **Civilian Vehicles:** [Download mod](https://forum.dcs.world/topic/270558-civilian-objects-and-vehicles/)

---

## Installation

1. **Download** the mission file (`urbanhelosandbox.miz`)
2. **Place in:** `Saved Games/DCS/Missions/` (singleplayer) or `DCS/Missions/` (multiplayer)
3. **Load mission** in DCS World
4. **(Optional)** Install [Civilian Objects and Vehicles mod](https://forum.dcs.world/topic/270558-civilian-objects-and-vehicles/) for enhanced experience
5. **Fly and enjoy!** 🚁

---

## Credits

**Mission Design & Development:** CSARLEB Team
**Inspired By:** "I Love This Job" mission pack
**Built With:** DCS World scripting engine, MIST framework
**Special Thanks:** DCS community, civilian vehicle mod authors

---

**Version:** See [release notes](./release/) for version history and changelog.

**Have fun and fly safe! 🚁**

