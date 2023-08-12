//SULACO AREAS--------------------------------------//
// Fore = West  | Aft = East //
// Port = South | Starboard = North //
/area/shuttle
	ceiling = CEILING_METAL
	requires_power = 0
	ambience_exterior = AMBIENCE_ALMAYER
	ceiling_muffle = FALSE

/area/sulaco
	icon = 'icons/turf/area_almayer.dmi'
	//ambience = list('sound/ambience/shipambience.ogg')
	icon_state = "almayer"
	ceiling = CEILING_METAL
	powernet_name = "sulaco"
	sound_environment = SOUND_ENVIRONMENT_ROOM
	soundscape_interval = 30
	//soundscape_playlist = list('sound/effects/xylophone1.ogg', 'sound/effects/xylophone2.ogg', 'sound/effects/xylophone3.ogg')
	ambience_exterior = AMBIENCE_ALMAYER
	ceiling_muffle = FALSE

/area/shuttle/sulaco/elevator_cen1/upperdeck
	name = "\improper Central Elevator 1"
	icon_state = "shuttle"
	fake_zlevel = 1

/area/shuttle/sulaco/elevator_cen1/elevator
	icon_state = "away1"
	requires_power = FALSE
	lighting_use_dynamic = FALSE
/area/shuttle/sulaco/elevator_cen1/lowerdeck
	name = "\improper Central Elevator 1"
	icon_state = "shuttle"
	fake_zlevel = 2


/area/shuttle/sulaco/elevator_cen2/upperdeck
	name = "\improper Central Elevator 2"
	icon_state = "shuttle"
	fake_zlevel = 1

/area/shuttle/sulaco/elevator_cen2/elevator
	icon_state = "away1"
	requires_power = FALSE
	lighting_use_dynamic = FALSE
/area/shuttle/sulaco/elevator_cen2/lowerdeck
	name = "\improper Central Elevator 2"
	icon_state = "shuttle"
	fake_zlevel = 2

/area/shuttle/sulaco/elevator_maintenance/upperdeck
	name = "\improper Maintenance Elevator"
	icon_state = "shuttle"
	fake_zlevel = 1

/area/shuttle/sulaco/elevator_maintenance/lowerdeck
	name = "\improper Maintenance Elevator"
	icon_state = "shuttle"
	fake_zlevel = 2

/area/shuttle/sulaco/elevator_hangar/lowerdeck
	name = "\improper Hangar Elevator"
	icon_state = "shuttle"
	fake_zlevel = 2 // lowerdeck

/area/shuttle/sulaco/elevator_hangar/underdeck
	name = "\improper Hangar Elevator"
	icon_state = "shuttle"
	fake_zlevel = 3

/obj/structure/machinery/computer/shuttle_control/sulaco/hangar
	name = "Elevator Console"
	icon = 'icons/obj/structures/machinery/computer.dmi'
	icon_state = "supply"
	unslashable = TRUE
	unacidable = TRUE
	exproof = 1
	density = TRUE
	req_access = null
	shuttle_tag = "Hangar"

/obj/structure/machinery/computer/shuttle_control/sulaco/maintenance
	name = "Elevator Console"
	icon = 'icons/obj/structures/machinery/computer.dmi'
	icon_state = "shuttle"
	unslashable = TRUE
	unacidable = TRUE
	exproof = 1
	density = TRUE
	req_access = null
	shuttle_tag = "Maintenance"

/area/sulaco/command
	minimap_color = MINIMAP_AREA_COMMAND

/area/sulaco/command/cic
	name = "\improper Combat Information Center"
	icon_state = "cic"
	fake_zlevel = 1 // upperdeck
	soundscape_playlist = SCAPE_PL_CIC
	soundscape_interval = 50
	flags_area = AREA_NOTUNNEL

/area/sulaco/command/cichallway
	name = "\improper Secure Command Hallway"
	icon_state = "airoom"
	fake_zlevel = 1 // upperdeck

/area/sulaco/command/airoom
	name = "\improper AI Core"
	icon_state = "airoom"
	fake_zlevel = 1 // upperdeck
	soundscape_playlist = SCAPE_PL_ARES
	soundscape_interval = 120
	flags_area = AREA_NOTUNNEL

/area/sulaco/command/securestorage
	name = "\improper Secure Storage"
	icon_state = "corporatespace"
	fake_zlevel = 1 // upperdeck

/area/sulaco/command/computerlab
	name = "\improper Computer Lab"
	icon_state = "ceroom"
	fake_zlevel = 1 // upperdeck

/area/sulaco/command/telecomms
	name = "\improper Telecommunications"
	icon_state = "tcomms"
	fake_zlevel = 1 // upperdeck
	flags_area = AREA_NOTUNNEL

/area/sulaco/command/self_destruct
	name = "\improper Self-Destruct Core Room"
	icon_state = "selfdestruct"
	fake_zlevel = 1 // upperdeck
	flags_area = AREA_NOTUNNEL

/area/sulaco/command/corporateliason
	name = "\improper Corporate Liaison Office"
	icon_state = "corporatespace"
	fake_zlevel = 1 // upperdeck

/area/sulaco/command/combat_correspondent
	name = "\improper Combat Correspondent Office"
	icon_state = "selfdestruct"
	fake_zlevel = 1 // upperdeck

/area/sulaco/engineering
	minimap_color = MINIMAP_AREA_ENGI

/area/sulaco/engineering/upper_engineering
	name = "\improper Upper Engineering"
	icon_state = "upperengineering"
	fake_zlevel = 1 // upperdeck

/area/sulaco/engineering/upper_engineering/starboard
	name = "\improper Starboard Upper Engineering"

/area/sulaco/engineering/upper_engineering/port
	name = "\improper Port Upper Engineering"

/area/sulaco/engineering/upper_engineering/notunnel
	flags_area = AREA_NOTUNNEL

/area/sulaco/engineering/ce_room
	name = "\improper Chief Engineer Office"
	icon_state = "ceroom"
	fake_zlevel = 1 // upperdeck

/area/sulaco/engineering/lower_engine_monitoring
	name = "\improper Engine Reactor Monitoring"
	icon_state = "lowermonitoring"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/engineering/lower_engineering
	name = "\improper Engineering Lower"
	icon_state = "lowerengineering"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/engineering/engineering_workshop
	name = "\improper Engineering Workshop"
	icon_state = "workshop"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/engineering/engineering_workshop/hangar
	name = "\improper Ordnance workshop"

/area/sulaco/engineering/engine_core
	name = "\improper Engine Reactor Core Room"
	icon_state = "coreroom"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ENG
	soundscape_interval = 15

/area/sulaco/engineering/starboard_atmos
	name = "\improper Atmospherics Starboard"
	icon_state = "starboardatmos"
	fake_zlevel = 1 // upperdeck

/area/sulaco/engineering/port_atmos
	name = "\improper Atmospherics Port"
	icon_state = "portatmos"
	fake_zlevel = 1 // upperdeck

/area/sulaco/engineering/laundry
	name = "\improper Laundry Room"
	icon_state = "laundry"
	fake_zlevel = 1 // upperdeck

/area/sulaco/shipboard
	minimap_color = MINIMAP_AREA_SEC

/area/sulaco/shipboard/navigation
	name = "\improper Astronavigational Deck"
	icon_state = "astronavigation"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/shipboard/starboard_missiles
	name = "\improper Missile Tubes Starboard"
	icon_state = "starboardmissile"
	fake_zlevel = 1 // upperdeck

/area/sulaco/shipboard/port_missiles
	name = "\improper Missile Tubes Port"
	icon_state = "portmissile"
	fake_zlevel = 1 // upperdeck

/area/sulaco/shipboard/weapon_room
	name = "\improper Weapon Control Room"
	icon_state = "weaponroom"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/shipboard/weapon_room/notunnel
	flags_area = AREA_NOTUNNEL

/area/sulaco/shipboard/starboard_point_defense
	name = "\improper Point Defense Starboard"
	icon_state = "starboardpd"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/shipboard/port_point_defense
	name = "\improper Point Defense Port"
	icon_state = "portpd"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/shipboard/brig
	name = "\improper Brig"
	icon_state = "brig"
	fake_zlevel = 1 //upperdeck

/area/sulaco/shipboard/brig/lobby
	name = "\improper Brig Lobby"
	icon_state = "brig"

/area/sulaco/shipboard/checkpoint
	name = "\improper Security Checkpoint"
	icon_state = "brig"
/area/sulaco/shipboard/brig/armory
	name = "\improper Brig Armory"
	icon_state = "brig"

/area/sulaco/shipboard/brig/main_office
	name = "\improper Brig Main Office"
	icon_state = "brig"

/area/sulaco/shipboard/brig/perma
	name = "\improper Brig Perma Cells"
	icon_state = "brig"

/area/sulaco/shipboard/brig/cryo
	name = "\improper Brig Cryo Pods"
	icon_state = "brig"

/area/sulaco/shipboard/brig/surgery
	name = "\improper Brig Surgery"
	icon_state = "brig"

/area/sulaco/shipboard/brig/general_equipment
	name = "\improper Brig General Equipment"
	icon_state = "brig"

/area/sulaco/shipboard/brig/evidence_storage
	name = "\improper Brig Evidence Storage"
	icon_state = "brig"

/area/sulaco/shipboard/brig/execution
	name = "\improper Brig Execution Room"
	icon_state = "brig"

/area/sulaco/shipboard/brig/cic_hallway
	name = "\improper Brig CiC Hallway"
	icon_state = "brig"

/area/sulaco/shipboard/brig/dress
	name = "\improper CIC Dress Uniform Room"
	icon_state = "brig"

/area/sulaco/shipboard/brig/processing
	name = "\improper Brig Processing and Holding"
	icon_state = "brig"

/area/sulaco/shipboard/brig/cells
	name = "\improper Brig Cells"
	icon_state = "brigcells"

/area/sulaco/shipboard/brig/chief_mp_office
	name = "\improper Brig Chief MP Office"
	icon_state = "chiefmpoffice"

/area/sulaco/shipboard/sea_office
	name = "\improper Senior Enlisted Advisor Office"
	icon_state = "chiefmpoffice"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/shipboard/firing_range_north
	name = "\improper Starboard Firing Range"
	icon_state = "firingrange"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/shipboard/firing_range_south
	name = "\improper Port Firing Range"
	icon_state = "firingrange"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/shipboard/sensors
	name = "\improper Sensor Room"
	icon_state = "sensor"

/area/sulaco/hallways/hangar
	name = "\improper Hangar"
	icon_state = "hangar"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_HANGAR
	soundscape_interval = 50

/area/sulaco/hallways/vehiclehangar
	name = "\improper Vehicle Storage"
	icon_state = "exoarmor"
	fake_zlevel = 2

/area/sulaco/living
	minimap_color = MINIMAP_AREA_COLONY

/area/sulaco/living/tankerbunks
	name = "\improper Vehicle Crew Bunks"
	icon_state = "livingspace"
	fake_zlevel = 2

/area/sulaco/squads/tankdeliveries
	name = "\improper Vehicle ASRS"
	icon_state = "req"
	fake_zlevel = 2

/area/sulaco/hallways/exoarmor
	name = "\improper Vehicle Armor Storage"
	icon_state = "exoarmor"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/hallways/repair_bay
	name = "\improper Deployment Workshop"
	icon_state = "dropshiprepair"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/hallways/mission_planner
	name = "\improper Dropship Central Computer Room"
	icon_state = "missionplanner"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/hallways/starboard_umbilical
	name = "\improper Umbilical Starboard"
	icon_state = "starboardumbilical"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/hallways/port_umbilical
	name = "\improper Umbilical Port"
	icon_state = "portumbilical"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/hallways/aft_hallway
	name = "\improper Hallway Aft"
	icon_state = "aft"
	fake_zlevel = 1 // upperdeck

/area/sulaco/hallways/stern_hallway
	name = "\improper Hallway Stern"
	icon_state = "stern"
	fake_zlevel = 1 // upperdeck

/area/sulaco/hallways/port_hallway
	name = "\improper Hallway Port"
	icon_state = "port"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/hallways/starboard_hallway
	name = "\improper Hallway Starboard"
	icon_state = "starboard"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/stair_clone
	name = "\improper Stairs"
	icon_state = "stairs_lowerdeck"
	fake_zlevel = 2 // lowerdeck
	resin_construction_allowed = FALSE

/area/sulaco/stair_clone/upper
	icon_state = "stairs_upperdeck"
	fake_zlevel = 1 // upperdeck

/area/sulaco/hull/lower_hull
	name = "\improper Hull Lower"
	icon_state = "lowerhull"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/hull/upper_hull
	name = "\improper Hull Upper"
	icon_state = "upperhull"
	fake_zlevel = 1 // upperdeck

/area/sulaco/hull/upper_hull/u_f_s
	name = "\improper Upper Fore-Starboard Hull"
	icon_state = "upperhull"

/area/sulaco/hull/upper_hull/u_m_s
	name = "\improper Upper Midship-Starboard Hull"
	icon_state = "upperhull"

/area/sulaco/hull/upper_hull/u_a_s
	name = "\improper Upper Aft-Starboard Hull"
	icon_state = "upperhull"

/area/sulaco/hull/upper_hull/u_f_p
	name = "\improper Upper Fore-Port Hull"
	icon_state = "upperhull"

/area/sulaco/hull/upper_hull/u_m_p
	name = "\improper Upper Midship-Port Hull"
	icon_state = "upperhull"

/area/sulaco/hull/upper_hull/u_a_p
	name = "\improper Upper Aft-Port Hull"
	icon_state = "upperhull"

/area/sulaco/hull/lower_hull/l_f_s
	name = "\improper Lower Fore-Starboard Hull"
	icon_state = "upperhull"

/area/sulaco/hull/lower_hull/l_m_s
	name = "\improper Lower Midship-Starboard Hull"
	icon_state = "upperhull"

/area/sulaco/hull/lower_hull/l_a_s
	name = "\improper Lower Aft-Starboard Hull"
	icon_state = "upperhull"

/area/sulaco/hull/lower_hull/l_f_p
	name = "\improper Lower Fore-Port Hull"
	icon_state = "upperhull"

/area/sulaco/hull/lower_hull/l_m_p
	name = "\improper Lower Midship-Port Hull"
	icon_state = "upperhull"

/area/sulaco/hull/lower_hull/l_a_p
	name = "\improper Lower Aft-Port Hull"
	icon_state = "upperhull"

/area/sulaco/living/cryo_cells
	name = "\improper Cryo Cells"
	icon_state = "cryo"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/briefing
	name = "\improper Briefing Area"
	icon_state = "briefing"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/port_emb
	name = "\improper Extended Mission Bunks"
	icon_state = "portemb"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/starboard_emb
	name = "\improper Extended Mission Bunks"
	icon_state = "starboardemb"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/port_garden
	name = "\improper Garden"
	icon_state = "portemb"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/starboard_garden
	name = "\improper Garden"
	icon_state = "starboardemb"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/basketball
	name = "\improper Basketball Court"
	icon_state = "basketball"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/grunt_rnr
	name = "\improper Lounge"
	icon_state = "gruntrnr"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/officer_rnr
	name = "\improper Officer's Lounge"
	icon_state = "officerrnr"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/officer_study
	name = "\improper Officer's Study"
	icon_state = "officerstudy"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/cafeteria_port
	name = "\improper Cafeteria Port"
	icon_state = "food"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/cafeteria_starboard
	name = "\improper Cafeteria Starboard"
	icon_state = "food"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/gym
	name = "\improper Gym"
	icon_state = "officerrnr"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/cafeteria_officer
	name = "\improper Officer Cafeteria"
	icon_state = "food"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/offices
	name = "\improper Conference Office"
	icon_state = "briefing"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/living/offices/flight
	name = "\improper Flight Office"

/area/sulaco/living/captain_mess
	name = "\improper Captain's Mess"
	icon_state = "briefing"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/pilotbunks
	name = "\improper Pilot's Bunks"
	icon_state = "livingspace"
	fake_zlevel = 1

/area/sulaco/living/bridgebunks
	name = "\improper Staff Officer Bunks"
	icon_state = "livingspace"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/commandbunks
	name = "\improper Commanding Officer's Bunk"
	icon_state = "livingspace"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/synthcloset
	name = "\improper Synthetic Storage Closet"
	icon_state = "livingspace"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/numbertwobunks
	name = "\improper Executive Officer's Bunk"
	icon_state = "livingspace"
	fake_zlevel = 1 // upperdeck

/area/sulaco/living/chapel
	name = "\improper Sulaco Chapel"
	icon_state = "officerrnr"
	fake_zlevel = 1 // upperdeck

/area/sulaco/medical
	minimap_color = MINIMAP_AREA_MEDBAY

/area/sulaco/medical/lower_medical_lobby
	name = "\improper Medical Lower Lobby"
	icon_state = "medical"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/medical/upper_medical
	name = "\improper Medical Upper"
	icon_state = "medical"
	fake_zlevel = 1 // upperdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/medical/morgue
	name = "\improper Morgue"
	icon_state = "operating"
	fake_zlevel = 1 // upperdeck

/area/sulaco/medical/operating_room_one
	name = "\improper Medical Operating Room 1"
	icon_state = "operating"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/medical/operating_room_two
	name = "\improper Medical Operating Room 2"
	icon_state = "operating"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/medical/operating_room_three
	name = "\improper Medical Operating Room 3"
	icon_state = "operating"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/medical/operating_room_four
	name = "\improper Medical Operating Room 4"
	icon_state = "operating"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/medical/medical_science
	name = "\improper Medical Research laboratories"
	icon_state = "science"
	fake_zlevel = 1 // upperdeck

/area/sulaco/medical/hydroponics
	name = "\improper Medical Research hydroponics"
	icon_state = "science"
	fake_zlevel = 1 // upperdeck

/area/sulaco/medical/testlab
	name = "\improper Medical Research workshop"
	icon_state = "science"
	fake_zlevel = 1 // upperdeck

/area/sulaco/medical/containment
	name = "\improper Medical Research containment"
	icon_state = "science"
	fake_zlevel = 1 // upperdeck

/area/sulaco/medical/containment/cell
	name = "\improper Medical Research containment cells"
	icon_state = "science"
	fake_zlevel = 1 // upperdeck
	flags_area = AREA_AVOID_BIOSCAN|AREA_NOTUNNEL|AREA_CONTAINMENT

/area/sulaco/medical/containment/cell/cl
	name = "\improper Containment"

/area/sulaco/medical/chemistry
	name = "\improper Medical Chemical laboratory"
	icon_state = "chemistry"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/medical/lockerroom
	name = "\improper Medical Locker Room"
	icon_state = "science"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/medical/cryo_tubes
	name = "\improper Medical Cryogenics Tubes"
	icon_state = "medical"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/medical/lower_medical_medbay
	name = "\improper Medical Lower Medbay"
	icon_state = "medical"
	fake_zlevel = 2 // lowerdeck
	soundscape_playlist = SCAPE_PL_ELEVATOR_MUSIC
	soundscape_interval = 120

/area/sulaco/squads/alpha
	name = "\improper Squad Alpha Preparation"
	icon_state = "alpha"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/squads/bravo
	name = "\improper Squad Bravo Preparation"
	icon_state = "bravo"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/squads/charlie
	name = "\improper Squad Charlie Preparation"
	icon_state = "charlie"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/squads/delta
	name = "\improper Squad Delta Preparation"
	icon_state = "delta"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/squads/alpha_bravo_shared
	name = "\improper Alpha Bravo Equipment Preparation"
	icon_state = "ab_shared"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/squads/charlie_delta_shared
	name = "\improper Charlie Delta Equipment Preparation"
	icon_state = "cd_shared"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/squads/req
	name = "\improper Requisitions"
	icon_state = "req"
	fake_zlevel = 2 // lowerdeck

/area/sulaco/powered //for objects not intended to lose power
	name = "\improper Powered"
	icon_state = "selfdestruct"
	requires_power = 0

/area/sulaco/powered/agent
	name = "\improper Unknown Area"
	icon_state = "selfdestruct"
	fake_zlevel = 2 // lowerdeck
	flags_area = AREA_AVOID_BIOSCAN|AREA_NOTUNNEL

/area/sulaco/engineering/airmix
	icon_state = "selfdestruct"
	requires_power = 0
	flags_area = AREA_NOTUNNEL

/area/sulaco/lifeboat_pumps
	name = "Lifeboat Fuel Pumps"
	icon_state = "lifeboat_pump"
	requires_power = 1
	fake_zlevel = 1

/area/sulaco/lifeboat_pumps/north1
	name = "North West Lifeboat Fuel Pump"

/area/sulaco/lifeboat_pumps/north2
	name = "North East Lifeboat Fuel Pump"

/area/sulaco/lifeboat_pumps/south1
	name = "South West Lifeboat Fuel Pump"

/area/sulaco/lifeboat_pumps/south2
	name = "South East Lifeboat Fuel Pump"

/area/sulaco/command/lifeboat
	name = "\improper Lifeboat Docking Port"
	icon_state = "selfdestruct"
	fake_zlevel = 1 // upperdeck

/area/sulaco/ert_port
	name = "\improper ERT Docking Port"
	icon_state = "lifeboat"
	flags_area = AREA_NOTUNNEL

/area/space/sulaco/lifeboat_dock
	name = "\improper Lifeboat Docking Port"
	icon_state = "lifeboat"
	fake_zlevel = 1 // upperdeck
	flags_area = AREA_NOTUNNEL

/area/sulaco/evacuation
	icon = 'icons/turf/areas.dmi'
	icon_state = "shuttle2"
	requires_power = 0
	flags_area = AREA_NOTUNNEL

//Placeholder.
/area/sulaco/evacuation/pod1
/area/sulaco/evacuation/pod2
/area/sulaco/evacuation/pod3
/area/sulaco/evacuation/pod4
/area/sulaco/evacuation/pod5
/area/sulaco/evacuation/pod6
/area/sulaco/evacuation/pod7
/area/sulaco/evacuation/pod8
/area/sulaco/evacuation/pod9
/area/sulaco/evacuation/pod10
/area/sulaco/evacuation/pod11
/area/sulaco/evacuation/pod12
/area/sulaco/evacuation/pod13
/area/sulaco/evacuation/pod14
/area/sulaco/evacuation/pod15
/area/sulaco/evacuation/pod16
/area/sulaco/evacuation/pod17
/area/sulaco/evacuation/pod18

/area/sulaco/evacuation/stranded

//Placeholder.
/area/sulaco/evacuation/stranded/pod1
/area/sulaco/evacuation/stranded/pod2
/area/sulaco/evacuation/stranded/pod3
/area/sulaco/evacuation/stranded/pod4
/area/sulaco/evacuation/stranded/pod5
/area/sulaco/evacuation/stranded/pod6
/area/sulaco/evacuation/stranded/pod7
/area/sulaco/evacuation/stranded/pod8
/area/sulaco/evacuation/stranded/pod9
/area/sulaco/evacuation/stranded/pod10
/area/sulaco/evacuation/stranded/pod11
/area/sulaco/evacuation/stranded/pod12
/area/sulaco/evacuation/stranded/pod13
/area/sulaco/evacuation/stranded/pod14
/area/sulaco/evacuation/stranded/pod15
/area/sulaco/evacuation/stranded/pod16
/area/sulaco/evacuation/stranded/pod17
/area/sulaco/evacuation/stranded/pod18

//Drop Pods
/area/shuttle/drop1
	//soundscape_playlist = list('sound/soundscape/drum1.ogg')
	soundscape_interval = 30 //seconds
	is_resin_allowed = FALSE
	flags_area = AREA_NOTUNNEL
	is_landing_zone = TRUE
	ceiling = CEILING_REINFORCED_METAL

/area/shuttle/drop1/Enter(atom/movable/O, atom/oldloc)
	if(istype(O, /obj/structure/barricade))
		return FALSE
	return TRUE

/area/shuttle/drop1/sulaco
	name = "\improper Dropship Alamo"
	icon_state = "shuttlered"
	base_muffle = MUFFLE_HIGH

/area/shuttle/drop1/LV624
	name = "\improper Dropship Alamo"
	ambience_exterior = AMBIENCE_LV624
	icon_state = "shuttle"

/area/shuttle/drop1/prison
	name = "\improper Dropship Alamo"
	ambience_exterior = AMBIENCE_PRISON
	icon_state = "shuttle"

/area/shuttle/drop1/BigRed
	name = "\improper Dropship Alamo"
	ambience_exterior = AMBIENCE_BIGRED
	icon_state = "shuttle"

/area/shuttle/drop1/ice_colony
	name = "\improper Dropship Alamo"
	icon_state = "shuttle"

/area/shuttle/drop1/DesertDam
	name = "\improper Dropship Alamo"
	ambience_exterior = AMBIENCE_TRIJENT
	icon_state = "shuttle"

/area/shuttle/drop1/transit
	ambience_exterior = 'sound/ambience/dropship_ambience_loop.ogg'
	name = "\improper Dropship Alamo Transit"
	icon_state = "shuttle2"

/area/shuttle/drop1/lz1
	name = "\improper Alamo Landing Zone"
	icon_state = "away1"


/area/shuttle/drop2/Enter(atom/movable/O, atom/oldloc)
	if(istype(O, /obj/structure/barricade))
		return FALSE
	return TRUE

/area/shuttle/drop2
	//soundscape_playlist = list('sound/soundscape/drum1.ogg')
	soundscape_interval = 30 //seconds
	is_resin_allowed = FALSE
	flags_area = AREA_NOTUNNEL
	is_landing_zone = TRUE
	ceiling = CEILING_REINFORCED_METAL

/area/shuttle/drop2/sulaco
	name = "\improper Dropship Normandy"
	icon_state = "shuttle"
	base_muffle = MUFFLE_HIGH

/area/shuttle/drop2/LV624
	name = "\improper Dropship Normandy"
	ambience_exterior = AMBIENCE_LV624
	icon_state = "shuttle2"

/area/shuttle/drop2/prison
	name = "\improper Dropship Normandy"
	ambience_exterior = AMBIENCE_PRISON
	icon_state = "shuttle2"

/area/shuttle/drop2/BigRed
	name = "\improper Dropship Normandy"
	ambience_exterior = AMBIENCE_BIGRED
	icon_state = "shuttle2"

/area/shuttle/drop2/ice_colony
	name = "\improper Dropship Normandy"
	icon_state = "shuttle2"

/area/shuttle/drop2/DesertDam
	name = "\improper Dropship Normandy"
	ambience_exterior = AMBIENCE_TRIJENT
	icon_state = "shuttle2"

/area/shuttle/drop2/transit
	ambience_exterior = 'sound/ambience/dropship_ambience_loop.ogg'
	name = "\improper Dropship Normandy Transit"
	icon_state = "shuttlered"

/area/shuttle/drop2/lz2
	name = "\improper Normandy Landing Zone"
	icon_state = "away2"





//DISTRESS SHUTTLES

/area/shuttle/distress
	lighting_use_dynamic = FALSE
	unique = TRUE

/area/shuttle/distress/start
	name = "\improper Distress Shuttle"
	icon_state = "away1"
	flags_atom = AREA_ALLOW_XENO_JOIN

/area/shuttle/distress/transit
	name = "\improper Distress Shuttle Transit"
	icon_state = "away2"


/area/shuttle/distress/start_pmc
	name = "\improper Distress Shuttle PMC"
	icon_state = "away1"

/area/shuttle/distress/transit_pmc
	name = "\improper Distress Shuttle PMC Transit"
	icon_state = "away2"


/area/shuttle/distress/start_upp
	name = "\improper Distress Shuttle UPP"
	icon_state = "away1"


/area/shuttle/distress/transit_upp
	name = "\improper Distress Shuttle UPP Transit"
	icon_state = "away2"


/area/shuttle/distress/start_big
	name = "\improper Distress Shuttle Big"
	icon_state = "away1"


/area/shuttle/distress/transit_big
	name = "\improper Distress Shuttle Big Transit"
	icon_state = "away2"


/area/shuttle/distress/arrive_1
	name = "\improper Distress Shuttle"
	icon_state = "away3"

/area/shuttle/distress/arrive_2
	name = "\improper Distress Shuttle"
	icon_state = "away4"

/area/shuttle/distress/arrive_3
	name = "\improper Distress Shuttle"
	icon_state = "away"


/area/shuttle/distress/arrive_n_hangar
	name = "\improper Distress Shuttle"
	icon_state = "away"

/area/shuttle/distress/arrive_s_hangar
	name = "\improper Distress Shuttle"
	icon_state = "away3"

/area/shuttle/distress/start_small
	name = "\improper VIP Shuttle"
	icon_state = "away3"

/area/shuttle/distress/transit_small
	name = "\improper VIP Shuttle Transit"
	icon_state = "away2"

/area/shuttle/distress/arrive_n_engi
	name = "\improper VIP Shuttle"
	icon_state = "away"

/area/shuttle/distress/arrive_s_engi
	name = "\improper VIP Shuttle"
	icon_state = "away2"
