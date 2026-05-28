/mob //Code taken directly from the "Bottomless" Vice from Caustic Cove, modified for linear progression rather than exponential
	var/maxnutrition = NUTRITION_LEVEL_FULL
//The Vice itself
/datum/charflaw/ravenous
	name = "Ravenous"
	desc = "No matter how much I eat, I still feel empty..."
	var/last_check = 0
//The Vice's workflow
/datum/charflaw/ravenous/flaw_on_life(mob/user)
	. = ..()
	if(world.time < last_check + 10 SECONDS)
		return
	if(!user)
		return
	if(user.stat == DEAD)
		return
	last_check = world.time
	
	user.maxnutrition += user.maxnutrition + 2.500
	if(user.maxnutrition * 0.8 > user.nutrition)
		user.add_stress(/datum/stressevent/hungy)
	else
		user.remove_stress(/datum/stressevent/hungy)
//The Vice's mood penalty if it isn't fulfilled
/datum/stressevent/hungy
	timer = 10 MINUTES
	stressadd = 5
	desc = span_red("I feel painfully empty, I need to eat more! More!!")
