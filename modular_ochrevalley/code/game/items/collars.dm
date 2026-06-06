//File for armored collars, should be identical in stats and cost to proper gorgets.


//Hardened leather, inherits from hardened leather gorget
/obj/item/clothing/neck/roguetown/leather/collar
	name = "hardened leather collar"
	desc = "Sturdy and affordable. Will protect your neck from some good lumbering."
	icon_state = "collar"
	item_state = "collar"
	leashable = TRUE
	dropshrink = 0.5


/obj/item/clothing/neck/roguetown/leather/collar/bell
	name = "hardened leather bell collar"
	desc = "Sturdy and affordable. Will protect your neck from some good lumbering. Comes with a bell."
	icon_state = "bell_collar"

/obj/item/clothing/neck/roguetown/leather/collar/bell/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS)


/obj/item/clothing/neck/roguetown/leather/collar/bell/cow
	name = "hardened leather cowbell collar"
	desc = "A tough band of leather with a bell that alerts all around you to your movements."
	icon_state = "cowbell_collar"




//Iron, inherits from iron gorget
/obj/item/clothing/neck/roguetown/gorget/collar
	name = "iron collar"
	desc = "A durable collar fortified with iron."
	icon_state = "collar"
	item_state = "collar"
	leashable = TRUE
	dropshrink = 0.5

/obj/item/clothing/neck/roguetown/gorget/collar/bell
	name = "iron bell collar"
	desc = "A durable collar fortified with iron. Comes with a sturdy bell."
	icon_state = "bell_collar"

/obj/item/clothing/neck/roguetown/gorget/collar/bell/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS)


/obj/item/clothing/neck/roguetown/gorget/collar/bell/cow



//Bronze, ingerits from bronze gorget
/obj/item/clothing/neck/roguetown/gorget/bronze/collar
	name = "bronze collar"
	desc = "An interlinked collar of bronze plates, shielding the throat from terrible wounds since the dawn of tyme."
	icon_state = "collar"
	item_state = "collar"
	leashable = TRUE
	dropshrink = 0.5


/obj/item/clothing/neck/roguetown/gorget/bronze/collar/bell
	name = "bronze bell collar"
	desc = "An interlinked collar of bronze plates, shielding the throat from terrible wounds since the dawn of tyme. This one comes with an elegant antique bell."
	icon_state = "bell_collar"

/obj/item/clothing/neck/roguetown/gorget/bronze/collar/bell/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS)


/obj/item/clothing/neck/roguetown/gorget/bronze/collar/bell/cow



//Steel, inherits from steel gorget
/obj/item/clothing/neck/roguetown/gorget/steel/collar
	name = "steel collar"
	desc = "A sturdy steel collar designed to protect the neck."
	icon_state = "collar"
	item_state = "collar"
	leashable = TRUE
	dropshrink = 0.5

/obj/item/clothing/neck/roguetown/gorget/steel/collar/bell
	name = "steel bell collar"
	desc = "A sturdy steel collar designed to protect the neck. Comes with a durable bell."
	icon_state = "bell_collar"

/obj/item/clothing/neck/roguetown/gorget/steel/collar/bell/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS)


/obj/item/clothing/neck/roguetown/gorget/steel/collar/bell/cow









