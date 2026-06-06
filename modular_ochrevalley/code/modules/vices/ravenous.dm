//Code taken directly from the "Bottomless" Vice from Caustic Cove, modified for linear progression rather than exponential
//The Vice itself
//We're calling variables that are defined by Caustic Cove's Bottomless vice, so if that vice gets tweaked down the line, this one will need to be updated accordingly!
/datum/charflaw/ravenous
	name = "Ravenous"
	desc = "No matter how much I eat, I still feel empty..."
//The Vice's workflow, again taken directly from CC but with two minor modifications
/datum/charflaw/ravenous/flaw_on_life(mob/user)
	. = ..()
	if(world.time < last_check + 10 SECONDS)
		return
	if(!user)
		return
	if(user.stat == DEAD)
		return
	last_check = world.time
	if(user.maxnutrition < 2000)
		user.maxnutrition += user.maxnutrition + 10
	if(user.maxnutrition * 0.8 > user.nutrition)
		user.add_stress(/datum/stressevent/glutton)
	else
		user.remove_stress(/datum/stressevent/glutton)
