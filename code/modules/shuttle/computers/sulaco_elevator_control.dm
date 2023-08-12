/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call
	name = "\improper Elevator Call"
	desc = "Control panel for the elevator"
	icon = 'icons/obj/structures/machinery/computer.dmi'
	icon_state = "elevator_screen"
	shuttleId = MOBILE_SULACO_ELEVATOR1
	is_call = TRUE
	var/dockId1
	var/datum/elevator/destination/site1

/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call
	name = "\improper Elevator Call"
	desc = "Control panel for the elevator"
	icon = 'icons/obj/structures/machinery/computer.dmi'
	icon_state = "elevator_screen"
	shuttleId = MOBILE_SULACO_ELEVATOR2
	is_call = TRUE
	var/dockId2
	var/datum/elevator/destination/site2

/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call/get_landing_zones()
	return list(SSshuttle.getDock(dockId1))

/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call/get_landing_zones()
	return list(SSshuttle.getDock(dockId2))

/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call/sulaco/upper1
	dockId1 = STAT_SULACO_UPR1

/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call/sulaco/lower1
	dockId1 = STAT_SULACO_LWR1


/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call/sulaco/upper2
	dockId2 = STAT_SULACO_UPR2

/obj/structure/machinery/computer/shuttle/elevator_controller/elevator_call/sulaco/lower2
	dockId2 = STAT_SULACO_LWR2

/obj/structure/machinery/computer/shuttle/elevator_controller
	name = "\improper Elevator Panel"
	desc = "Control panel for the elevator"
	icon = 'icons/obj/structures/machinery/computer.dmi'
	icon_state = "elevator_screen"

	unslashable = TRUE
	unacidable = TRUE
	exproof = 1
	density = FALSE
	req_access = null
	needs_power = TRUE


/obj/structure/machinery/computer/shuttle/elevator_controller/sulaco/get_landing_zones()
	. = list()
	for(var/obj/docking_port/stationary/sulaco/elev in SSshuttle.stationary)
		. += list(elev)

/obj/structure/machinery/computer/shuttle/elevator_controller/tgui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if (!ui)
		ui = new(user, src, "ElevatorControl", "Elevator Panel")
		ui.open()

/obj/structure/machinery/computer/shuttle/elevator_controller/ui_state(mob/user)
	return GLOB.not_incapacitated_and_adjacent_strict_state

/obj/structure/machinery/computer/shuttle/elevator_controller/ui_status(mob/user, datum/ui_state/state)
	. = ..()
	if(inoperable())
		to_chat(user, SPAN_WARNING("The panel is inoperable."))
		return UI_CLOSE

/obj/structure/machinery/computer/shuttle/elevator_controller/ui_data(mob/user)
	. = ..()
	var/obj/docking_port/mobile/sulaco/shuttle = SSshuttle.getShuttle(shuttleId)
	var/obj/docking_port/stationary/sulaco/dockedAt = shuttle.get_docked()
	.["docked_at"] = list("id"= dockedAt.id, "name" = dockedAt.name)
	.["destination"] = shuttle.destination
	.["mode"] = shuttle.mode
	.["eta"] = shuttle.timeLeft(0)

/obj/structure/machinery/computer/shuttle/elevator_controller/ui_static_data(mob/user)
	. = ..()
	var/obj/docking_port/mobile/sulaco/shuttle = SSshuttle.getShuttle(shuttleId)
	var/list/stops = get_landing_zones()
	.["destinations"] = list()
	for(var/obj/docking_port/stationary/sulaco/elevator1/dock as anything in stops)
		var/list/dockinfo = list(
			"id" = dock.id,
			"name" = dock.name,
		)
		.["destinations"] += list(dockinfo)
	.["max_flight_duration"] = shuttle.callTime / 10
	.["max_pre_arrival_duration"] = shuttle.prearrivalTime / 10
	.["max_refuel_duration"] = shuttle.rechargeTime / 10
	.["max_engine_start_duration"] = shuttle.ignitionTime / 10
	.["is_call_button"] = is_call

/obj/structure/machinery/computer/shuttle/elevator_controller/attack_hand(mob/user)
	. = ..(user)
	if(.)
		return TRUE

	tgui_interact(user)

/obj/structure/machinery/computer/shuttle/elevator_controller/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	if(.)
		return
	var/obj/docking_port/mobile/shuttle = SSshuttle.getShuttle(shuttleId)
	switch(action)
		if("move")
			if(shuttle.mode != SHUTTLE_IDLE)
				return
			var/dockId1 = params["target"]
			var/dockId2 = params["target"]
			if(!dockId1 || !dockId2)
				return
			var/obj/docking_port/stationary/dockedAt = shuttle.get_docked()
			if(dockedAt.id == (dockId1 || dockId2))
				return
			SSshuttle.moveShuttle(shuttle.id, (dockId1 || dockId2), TRUE)
			return TRUE
		if("button-push")
			playsound(loc, get_sfx("terminal_button"), KEYBOARD_SOUND_VOLUME * 2, 1)
			return FALSE
