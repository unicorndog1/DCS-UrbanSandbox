
# CSAR/SAR Urban Sandbox

This is yet another helicopter sandbox with a whole lot of inspiration coming from I Love This Job mission pack.  Helicopter ops within an urban enviroment with voiceovers and combat, choose a single mission or start a "shift" of three random missions.   This is meant to be for when you want a quick helicopter action fix with minimal approach time.

Since all missions are randomly generated, you can play anywhere on the map or on the map of your choice with slight modifications, see end of file.

## Prequisities 
This mission uses Civilian Objects but will substitue units if it's not present (like the "yellow ambulance")



## Table of Contents
- [Starting Missions](#starting-missions)
- [Mission Types](#mission-types)
- [Adding New Towns/Cities](#adding-new-townscities)

---

## Starting Missions

### Single Job
Use the **F10 Radio Menu** to select individual missions:

1. Press **F10** in-game
2. Navigate to the mission type submenu
3. Select difficulty level (where applicable)

**Available Single Missions:**
- **CSAR** (Combat Search And Rescue) - Easy or Hard difficulty
- **SAR** (Search And Rescue, no hostiles) - Easy or Hard difficulty
- **VIP Mission**
- **Chase Mission** - Easy or Hard difficulty
- **Ambulance Under Attack** - Easy (4-5 km), Medium (2.5-3.5 km), or Hard (1-2 km)
- **Vehicle Inspection Mission**
- **Rooftop Pickup**

### Shift of Jobs (Day Job)
Start a complete work shift with **3 randomly selected missions** in succession:

1. Press **F10** → Select **"Start Day"**
2. Complete the first mission
3. After 10 seconds, you'll receive the next job
4. Repeat until all 3 jobs are complete

**Features:**
- Missions are randomly selected from all available types
- Jobs are queued automatically
- Counter shows your progress (e.g., "Job 2 of 3")
- Complete message when the day is done

**To Cancel Current Mission:** F10 → "Cancel Current Mission"

---

## Mission Types

### 1. CSAR / SAR (Combat/Search And Rescue)

**Objective:** Locate a crash site, rescue the survivor(s), and transport them to a hospital.

**Difficulty Levels:**
- **Easy (1):** Exact crash location shown on F10 map
- **Medium (2):** 500m radius circle shown on map
- **Hard (3):** 1500m radius circle shown on map
- **Very Hard (4):** 2500m radius circle shown on map

**Difference:**
- **CSAR:** Hostile enemy units present at crash site
- **SAR:** No hostile units

**How to Play:**
1. Check F10 map for crash location (depending on difficulty)
2. Fly to the crash site
3. **Land near the crash site** (on the ground, not hovering)
4. **Stay landed for 10 seconds** to load patient(s)
5. Weight increases as patients are loaded
6. Fly to nearest **Hospital (LZ)** - marked with blue circles on map
7. **Land at hospital zone for 10 seconds** to unload patients
8. Mission complete!

**Optional - Hover Timer:**
- F10 → "Hover Timer: OFF/ON" to toggle
- When enabled, hovering near crash site (not landing) will trigger a timer
- Helps locate crash site if you're having trouble finding exact landing spot

---

### 2. VIP Mission

**Objective:** A terrorist group is moving a VIP to a new location, destroy the escorts and then take the VIP to the nearest hospital

**How to Play:**
1. Accept mission from F10 menu
2. VIP group spawns and location is provided
3. Fly to pickup location
4. Land to pick up VIP
5. Transport to designated drop-off location
6. Land to complete mission

---

### 3. Chase Mission

**Objective:** Track down and eliminate a dangerous driver in a "sports car" (VAZ).

**Target Characteristics:**
- Red sports car (opp_alpha_dtm) 
- Modified with turbocharger that emits exhaust plumes
- Drives around randomly in city zones
- Spawns on roads within city zones

**Difficulty Levels:**

#### Easy Mode:
1. Car emits **colored flares/smoke** from exhaust every 3 seconds
2. Simply locate and **eliminate the vehicle**
3. Visual tracking is straightforward

#### Hard Mode:
1. Car still emits exhaust plumes
2. Must **positively identify** target first:
   - Get within **85 meters** behind the vehicle
   - Stay within **75° rear cone** (directly behind)
   - Maintain position for **10 seconds**
3. After identification confirmed, **await further instructions** then eliminate

**Tips:**
- Car moves to random waypoints every 30 seconds
- Watch for exhaust plumes/flares to track vehicle
- Use roads in city zones as likely paths

---

### 4. Ambulance Under Attack

**Objective:** Protect an ambulance (M-113) that's under enemy attack.

**Difficulty Levels:**
- **Easy:** Ambulance spawns 4-5 km from your position
- **Medium:** Ambulance spawns 2.5-3.5 km from your position  
- **Hard:** Ambulance spawns 1-2 km from your position

**How to Play:**
1. Ambulance spawns at a rescue location
2. Multiple enemy infantry and vehicle groups spawn nearby and attack
3. **Eliminate all enemy groups** to complete mission
4. If ambulance is destroyed, mission fails

**Enemy Composition:**
- Infantry squads (2-4 soldiers each)
- Armed vehicles (M-1043 HMMWV, Tigr, or BTR-80)
- Difficulty affects proximity, not enemy count

**Tips:**
- Engage quickly on higher difficulties
- Prioritize threats closest to ambulance
- Use terrain and approach angles to your advantage

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

