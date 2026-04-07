
# 🚁 Urban Helicopter Sandbox - CSAR/SAR Missions

Welcome to an action-packed helicopter sandbox mission inspired by the "I Love This Job" mission pack! Experience diverse helicopter operations in an urban environment with dynamic voiceovers, combat scenarios, and randomly generated missions. Perfect for quick gameplay sessions with minimal downtime.

**Designed for:** UH-1H Huey (single-player or multiplayer with dynamic spawning for any helicopter)

**Key Features:**
- 🎲 **6 different mission types** with procedural generation
- 🎯 **Multiple difficulty levels** for varied challenge
- 🔄 **"Shift Mode"** - complete 3 consecutive missions for extended gameplay
- 🗣️ **Voice-over support** (optional TTS integration)
- 🌍 **Play anywhere** - works on any DCS map with proper zone setup

## 📦 Requirements

**Recommended Mod:**
- [Civilian Objects and Vehicles](https://forum.dcs.world/topic/270558-civilian-objects-and-vehicles/) - Adds civilian vehicles like yellow ambulances and sports cars
- Mission will substitute with default DCS units if mod is not present
- Highly recommended for better immersion in Chase and Vehicle Inspection missions

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
- 🔴 **CSAR** (Combat Search And Rescue) - 4 difficulty levels, hostiles present
- 🟢 **SAR** (Search And Rescue) - 4 difficulty levels, no hostiles
- 👔 **VIP Mission** - Destroy convoy, extract VIP
- 🏎️ **Chase Mission** - Track and eliminate speeding vehicle (Easy/Hard)
- 🚑 **Ambulance Under Attack** - Defend ambulance (Easy/Medium/Hard)
- 🔍 **Vehicle Inspection** - Investigate suspicious vehicles
- 🏢 **Rooftop Pickup** - Precision rooftop landing and extraction

### 🔄 Shift Mode ("Start Day")
Experience extended gameplay with **3 consecutive random missions**:

1. Press **F10** → **"Start Day"**
2. Complete your first mission
3. After **10 seconds**, next mission spawns automatically
4. Progress counter displays (e.g., "Job 2 of 3")
5. Final mission completion message ends your shift

**Features:**
- ✅ Missions selected randomly from all types
- ✅ Automatic queueing and progression
- ✅ No menu interaction needed between jobs
- ✅ Can cancel mid-shift: F10 → "Cancel Current Mission"

---

## Mission Types

### 1. CSAR / SAR (Combat / Search and Rescue)

**Objective:** Locate a crash site, rescue survivor(s), and deliver them to the nearest hospital.

#### Difficulty Levels
| Level | Label | Search Area | Hostiles (CSAR) |
|-------|-------|-------------|-----------------|
| 1 | Easy | Exact location | Light |
| 2 | Medium | 500m radius | Moderate |
| 3 | Hard | 1500m radius | Heavy |
| 4 | Very Hard | 2500m radius | Very Heavy |

**The Difference:**
- **CSAR** = Enemy units present at crash site (use caution!)
- **SAR** = No hostile units (focus on search)

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
- 🔴 Red sports car (VAZ with custom "juiced" modifications)
- 💨 Turbocharged engine emits visible exhaust plumes
- 🛣️ Drives randomly through city zones on roads
- ⚡ Changes direction every ~30 seconds

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

**Objective:** Inspect suspicious vehicles to find the target vehicle.

**Scenario:** 5 suspicious vehicles (opp_alpha_dtm) spotted on roads within 2km radius.

**How to Play:**
1. 5 vehicles spawn on random roads within 2km
2. One vehicle is secretly designated as the target
3. **Land within 25 feet** of each vehicle
4. **Stay landed for 5 seconds** to inspect
5. Inspection confirmed with on-screen messages
6. After identifying target vehicle (specific triggers apply), complete objective
7. Mission ends when target is found/eliminated



---

### 6. Rooftop Pickup

**Objective:** Land on a rooftop and pick up a person.  This is meant to be a difficult
hovering task - you must be in the vicinity of the person and your cargo door must be perpendicular
to them, as if the unit was jumping into the 'copter. Lose your hover after they've jumped and ....

**How to Play:**
1. Mission provides rooftop location
2. Navigate to building
3. Land on rooftop (precise landing required)
4. Pick up person
5. Transport to designated location


---

## Adding New Towns/Cities

The mission system uses trigger zones to define where mission elements spawn. To add new towns or cities to your mission:

### Step 1: Create City Zones

City zones define areas where rescue locations, vehicles, enemies, and other mission elements can appear.

**In DCS Mission Editor:**

1. Open your mission in the Mission Editor
2. Go to **Triggers** tab
3. Create a new **Trigger Zone** (`New` button)
4. **Name the zone:** `city_<name>`
   - ✅ Examples: `city_beirut`, `city_damascus`, `city_tripoli`
   - ❌ Must start with lowercase `city_`
5. **Position the zone** over the town/city area on the map
6. **Set the radius** to cover the populated area
7. Save the zone

**What City Zones Do:**
- Random CSAR/SAR crash sites spawn within these zones (100 locations per city zone)
- Chase mission vehicles drive on roads within city zones
- Rooftop missions select buildings in these zones
- Enemy spawns for various missions use these boundaries

### Step 2: Create Landing Zones (Hospitals)

Landing zones are where patients must be delivered after rescue missions.

**In DCS Mission Editor:**

1. Go to **Triggers** tab
2. Create a new **Trigger Zone**
3. **Name the zone:** `LZ_<name>`
   - ✅ Examples: `LZ_hospital1`, `LZ_beirut_airport`, `LZ_field_hospital`
   - ❌ Must start with uppercase `LZ_`
4. **Position the zone** at the hospital/landing location
5. **Set the radius:**
   - Typical: 100-300m (allows some landing tolerance)
   - Helipads: 50-100m
   - Large hospitals: 300-500m

**What Landing Zones Do:**
- Automatically marked on map with **blue circles** and "HOSPITAL" label
- CSAR/SAR missions require landing in these zones to drop off patients
- Must land and remain stationary for 10 seconds

### Naming Convention Summary

| Zone Type | Prefix | Example | Case Sensitive |
|-----------|--------|---------|----------------|
| City/Town | `city_` | `city_beirut` | Yes (lowercase) |
| Landing Zone | `LZ_` | `LZ_hospital1` | Yes (uppercase) |

### Example Configuration

For a mission in Lebanon with multiple towns:

```
Trigger Zones:
├── city_beirut (radius: 5000m)
├── city_tripoli (radius: 3000m)
├── city_sidon (radius: 2500m)
├── LZ_beirut_hospital (radius: 200m)
├── LZ_beirut_airport (radius: 300m)
├── LZ_tripoli_hospital (radius: 200m)
└── LZ_field_hospital (radius: 150m)
```

### Tips for Zone Placement

**City Zones:**
- Cover the entire urban area including suburbs
- Ensure zones contain roads (missions spawn vehicles on roads)
- Avoid placing entirely over water or mountains
- Multiple small zones are better than one huge zone

**Landing Zones:**
- Place near actual hospital buildings or helipads for realism
- Ensure flat terrain suitable for landing
- Don't overlap city zones (can, but not required)
- Create multiple LZs for variety and strategic options

### Testing Your Zones

1. Load the mission in DCS
2. Start a CSAR mission (F10 menu)
3. Verify crash site appears in city zone
4. Complete rescue and verify hospital LZ is marked and functional
5. Test with multiple mission types to ensure all zones work

---

## Additional Features

### Hover Timer Toggle
- **F10 → "Hover Timer: ON/OFF"**
- When enabled, hovering (not landing) near crash sites triggers guidance
- Helps locate precise landing spots in difficult terrain

### Global Events Menu
- **Rooftop MANPADS:** Spawns anti-air threats on rooftops in nearest city
- **Helicopter Hunt:** Spawns multiple ground vehicles that pursue your helicopter

### Mission Cancellation
- **F10 → "Cancel Current Mission"** - Cancels active mission
- Note: Must cancel before accepting a new single mission
- Day shifts queue automatically

---





## Troubleshooting

**"No missions found" error:**
- Ensure city zones exist with `city_` prefix
- Check that rescue locations have been generated
- Verify you're within 10km of mission areas

**"No city zone found" for Chase/Vehicle missions:**
- At least one `city_` zone must exist in mission
- Zone must contain roads for vehicle spawning

**Hospital not showing:**
- Verify landing zones use `LZ_` prefix (case-sensitive)
- Check zone radius is reasonable (100-500m)

**Patient won't load:**
- Must be fully **landed** (on ground, not hovering)
- Stay stationary for full 10 seconds
- Verify you're at crash site, not hospital

---

