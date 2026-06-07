/datum/charflaw/bottomless
	name = "Bottomless"
	desc = "My hunger grows exponentially and without limit! I need more food! MORE!" //OV Edit - Description expanded upon to differentiate from Ravenous
	var/last_check = 0

/datum/charflaw/bottomless/flaw_on_life(mob/user)
	. = ..()
	if(world.time < last_check + 10 SECONDS)
		return
	if(!user)
		return
	if(user.stat == DEAD)
		return
	last_check = world.time
	user.maxnutrition += user.maxnutrition * 0.002
	if(user.maxnutrition * 0.8 > user.nutrition)
		user.add_stress(/datum/stressevent/glutton)
	else
		user.remove_stress(/datum/stressevent/glutton)



