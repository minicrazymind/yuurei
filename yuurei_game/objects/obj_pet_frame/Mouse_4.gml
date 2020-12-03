if item_name == "basan"{
	prev_pet = CURRPET
	instance_destroy(CURRPET)
	CURRPET = obj_basan
	instance_create_depth(288, 612, 0, CURRPET)
	if prev_pet != CURRPET{
		PLAYERMONEY -= 15
		}
	show_debug_message("basan")
}

else if item_name == "suzaku"{
	prev_pet = CURRPET
	instance_destroy(CURRPET)
	CURRPET = obj_suzaku
	instance_create_depth(288, 612, 0, CURRPET)
	if prev_pet != CURRPET{
	PLAYERMONEY -= 30
	}
	show_debug_message("suzaku")
	}

else if item_name = "byakko"{
	prev_pet = CURRPET
	instance_destroy(CURRPET)
	CURRPET = obj_byakko
	instance_create_depth(288, 612, 0, CURRPET)
	if prev_pet != CURRPET{
		PLAYERMONEY -= 45
		}
	show_debug_message("byakko")
}

		