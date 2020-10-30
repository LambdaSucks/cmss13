/obj/item/poster
	name = "rolled-up poster"
	desc = "The poster comes with its own automatic adhesive mechanism, for easy pinning to any vertical surface."
	icon = 'icons/obj/structures/props/posters.dmi'
	icon_state = "rolled_poster"
	force = 0
	w_class = SIZE_SMALL
	var/serial_number = 0


/obj/item/poster/New(turf/loc, var/given_serial = 0)
	if(given_serial == 0)
		serial_number = rand(1, poster_designs.len)
	else
		serial_number = given_serial
	name += " - No. [serial_number]"
	..(loc)

//############################## THE ACTUAL DECALS ###########################

obj/structure/sign/poster
	name = "poster"
	desc = "A large piece of cheap printed paper."
	icon = 'icons/obj/structures/props/posters.dmi'
	anchored = 1
	var/serial_number	//Will hold the value of src.loc if nobody initialises it
	var/ruined = 0


obj/structure/sign/poster/New(var/serial)

	serial_number = serial

	if(serial_number == loc)
		serial_number = rand(1, poster_designs.len)	//This is for the mappers that want individual posters without having to use rolled posters.

	var/designtype = poster_designs[serial_number]
	var/datum/poster/design=new designtype
	name += " - [design.name]"
	desc += " [design.desc]"
	icon_state = design.icon_state // poster[serial_number]
	..()

obj/structure/sign/poster/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W, /obj/item/tool/wirecutters))
		playsound(loc, 'sound/items/Wirecutter.ogg', 25, 1)
		if(ruined)
			to_chat(user, SPAN_NOTICE("You remove the remnants of the poster."))
			qdel(src)
		else
			to_chat(user, SPAN_NOTICE("You carefully remove the poster from the wall."))
			roll_and_drop(user.loc)
		return


/obj/structure/sign/poster/attack_hand(mob/user as mob)
	if(ruined)
		return
	var/temp_loc = user.loc
	switch(alert("Do I want to rip the poster from the wall?","You think...","Yes","No"))
		if("Yes")
			if(user.loc != temp_loc)
				return
			visible_message(SPAN_WARNING("[user] rips [src] in a single, decisive motion!") )
			playsound(src.loc, 'sound/items/poster_ripped.ogg', 25, 1)
			ruined = 1
			icon_state = "poster_ripped"
			name = "ripped poster"
			desc = "You can't make out anything from the poster's original print. It's ruined."
			add_fingerprint(user)
		if("No")
			return

/obj/structure/sign/poster/proc/roll_and_drop(turf/newloc)
	var/obj/item/poster/P = new(src, serial_number)
	P.loc = newloc
	src.loc = P
	qdel(src)


//separated to reduce code duplication. Moved here for ease of reference and to unclutter r_wall/attackby()
/turf/closed/wall/proc/place_poster(var/obj/item/poster/P, var/mob/user)

	if(!istype(src,/turf/closed/wall))
		to_chat(user, SPAN_DANGER("You can't place this here!"))
		return

	var/stuff_on_wall = 0
	for(var/obj/O in contents) //Let's see if it already has a poster on it or too much stuff
		if(istype(O,/obj/structure/sign/poster))
			to_chat(user, SPAN_NOTICE("The wall is far too cluttered to place a poster!"))
			return
		stuff_on_wall++
		if(stuff_on_wall == 3)
			to_chat(user, SPAN_NOTICE("The wall is far too cluttered to place a poster!"))
			return

	to_chat(user, SPAN_NOTICE("You start placing the poster on the wall...")) //Looks like it's uncluttered enough. Place the poster.

	//declaring D because otherwise if P gets 'deconstructed' we lose our reference to P.resulting_poster
	var/obj/structure/sign/poster/D = new(P.serial_number)

	var/temp_loc = user.loc
	flick("poster_being_set",D)
	D.loc = src
	qdel(P)	//delete it now to cut down on sanity checks afterwards. Agouri's code supports rerolling it anyway
	playsound(D.loc, 'sound/items/poster_being_created.ogg', 25, 1)

	if(!do_after(user, 17, INTERRUPT_ALL, BUSY_ICON_HOSTILE))
		D.roll_and_drop(temp_loc)
		return

	to_chat(user, SPAN_NOTICE("You place the poster!"))
	
	SSclues.create_print(get_turf(user), user, "The fingerprint contains paper pieces.")
	SEND_SIGNAL(P, COMSIG_POSTER_PLACED, user)

/datum/poster
	// Name suffix. Poster - [name]
	var/name=""
	// Description suffix
	var/desc=""
	var/icon_state=""