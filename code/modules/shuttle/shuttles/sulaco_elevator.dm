/obj/docking_port/mobile/sulaco/elevator1
	name="Elevator 1"
	id=MOBILE_SULACO_ELEVATOR1

	// Map information
	height=6
	width=7
	preferred_direction = NORTH
	port_direction = SOUTH

	area_type = /area/shuttle/sulaco/elevator_cen1/elevator

	// Shuttle timings
	callTime = 30 SECONDS
	rechargeTime = 30 SECONDS
	ignitionTime = 4 SECONDS
	ambience_flight = 'sound/vehicles/tank_driving.ogg'
	ignition_sound = 'sound/mecha/powerup.ogg'

	movement_force = list("KNOCKDOWN" = 0, "THROW" = 0)
	var/datum/door_controller/aggregate/door_control

/obj/docking_port/mobile/sulaco/elevator2
	name="Elevator 2"
	id=MOBILE_SULACO_ELEVATOR2

	// Map information
	height=6
	width=7
	preferred_direction = NORTH
	port_direction = SOUTH

	area_type = /area/shuttle/sulaco/elevator_cen2/elevator

	// Shuttle timings
	callTime = 30 SECONDS
	rechargeTime = 30 SECONDS
	ignitionTime = 4 SECONDS
	ambience_flight = 'sound/vehicles/tank_driving.ogg'
	ignition_sound = 'sound/mecha/powerup.ogg'

	movement_force = list("KNOCKDOWN" = 0, "THROW" = 0)
	var/datum/door_controller/aggregate/door_control


/obj/docking_port/mobile/sulaco/elevator1/Initialize(mapload, ...)
	. = ..()
	door_control = new()
	door_control.label = "elevator"
	for(var/area/shuttle_area in shuttle_areas)
		for(var/obj/structure/machinery/door/door in shuttle_area)
			door_control.add_door(door, door.id)

/obj/docking_port/mobile/sulaco/elevator2/Initialize(mapload, ...)
	. = ..()
	door_control = new()
	door_control.label = "elevator"
	for(var/area/shuttle_area in shuttle_areas)
		for(var/obj/structure/machinery/door/door in shuttle_area)
			door_control.add_door(door, door.id)

/obj/docking_port/mobile/sulaco/elevator1/Destroy(force, ...)
	. = ..()
	QDEL_NULL(door_control)

/obj/docking_port/mobile/sulaco/elevator2/Destroy(force, ...)
	. = ..()
	QDEL_NULL(door_control)

/obj/docking_port/mobile/sulaco/elevator1/beforeShuttleMove(turf/newT, rotation, move_mode, obj/docking_port/mobile/moving_dock)
	. = ..()
	door_control.control_doors("force-lock-launch", "all", force=TRUE)

/obj/docking_port/mobile/sulaco/elevator2/beforeShuttleMove(turf/newT, rotation, move_mode, obj/docking_port/mobile/moving_dock)
	. = ..()
	door_control.control_doors("force-lock-launch", "all", force=TRUE)
/obj/docking_port/stationary/sulaco
	dir=NORTH
	width=7
	height=6
	// shutters to clear the area
	var/airlock_area
	var/airlock_exit

/obj/docking_port/stationary/sulaco/proc/get_doors()
	. = list()
	for(var/area/target_area in world)
		if(istype(target_area, airlock_area))
			for(var/obj/structure/machinery/door/door in target_area)
				. += list(door)

/obj/docking_port/stationary/sulaco/on_arrival(obj/docking_port/mobile/sulaco/arriving_shuttle)
	. = ..()
	// open elevator doors
	if(istype(arriving_shuttle, (/obj/docking_port/mobile/sulaco/elevator1 || /obj/docking_port/mobile/sulaco/elevator2)))
		//var/obj/docking_port/mobile/sulaco/elevator1/elevator = arriving_shuttle
		elevator.door_control.control_doors("open", airlock_exit)

	// open dock doors
	var/datum/door_controller/single/door_control = new()
	door_control.doors = get_doors()
	door_control.control_doors("open", FALSE, FALSE)
	qdel(door_control)

	playsound(src, 'sound/machines/ping.ogg', 25, 1)
	playsound(arriving_shuttle, 'sound/machines/ping.ogg', 25, 1)

/obj/docking_port/stationary/sulaco/on_departure(obj/docking_port/mobile/departing_shuttle)
	. = ..()
	var/datum/door_controller/single/door_control = new()
	door_control.doors = get_doors()
	door_control.control_doors("force-lock-launch")
	qdel(door_control)

/obj/docking_port/stationary/sulaco/upperdeck1
	name="Upperdeck 1"
	id=STAT_SULACO_UPR1
	airlock_area=/area/shuttle/sulaco/elevator_cen1/upperdeck
	airlock_exit="east"
	roundstart_template = /datum/map_template/shuttle/sulaco/elevator1

/obj/docking_port/stationary/sulaco/lowerdeck1
	name="Lowerdeck 1"
	id=STAT_SULACO_LWR1
	airlock_area=/area/shuttle/sulaco/elevator_cen1/lowerdeck
	airlock_exit="east"

/obj/docking_port/stationary/sulaco/upperdeck2
	name="Upperdeck 2"
	id=STAT_SULACO_UPR2
	airlock_area=/area/shuttle/sulaco/elevator_cen2/upperdeck
	airlock_exit="east"
	roundstart_template = /datum/map_template/shuttle/sulaco_central2

/obj/docking_port/stationary/sulaco/lowerdeck2
	name="Lowerdeck 2"
	id=STAT_SULACO_LWR2
	airlock_area=/area/shuttle/sulaco/elevator_cen2/lowerdeck
	airlock_exit="east"

/datum/map_template/shuttle/sulaco/elevator1
	name = "Sulaco Central 1 Elevator"
	shuttle_id = MOBILE_SULACO_ELEVATOR1
/datum/map_template/shuttle/sulaco_central2
	name = "Sulaco Central 2 Elevator"
	shuttle_id = MOBILE_SULACO_ELEVATOR2
