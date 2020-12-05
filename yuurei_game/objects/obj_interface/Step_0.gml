
switch(CURRPET){
	case obj_basan:
		c_basan = c_gray
		c_suzaku = c_white
		c_byakko = c_white
		c_boxboy = c_white
		break;
		
	case obj_suzaku:
		c_basan = c_white
		c_suzaku = c_gray
		c_byakko = c_white
		c_boxboy = c_white
		break;
	
	case obj_byakko:
		c_basan = c_white
		c_suzaku = c_white
		c_byakko = c_gray
		c_boxboy = c_white
		break;
	
	case obj_boxboy:
		c_basan = c_white
		c_suzaku = c_white
		c_byakko = c_white
		c_boxboy = c_gray
		break
}

switch(CURRWEAPON){
	case obj_spike_weapon:
		c_spike = c_gray
		c_shuriken = c_white
		c_lightning = c_white
		break;
		
	case obj_shuriken_weapon:
		c_spike = c_white
		c_shuriken = c_gray
		c_lightning = c_white
		break;
	
	case obj_mod_wep_1:
		c_spike = c_white
		c_shuriken = c_white
		c_lightning = c_gray
		break;
}



if BUYWEAPON{
	if keyboard_check_pressed(ord("D")) and obj_shopkeeper.selector_x_w < max_x{
		obj_shopkeeper.selector_x_w += 175
	}
	//add in sfx for else
		
	else if keyboard_check_pressed(ord("A")) and min_x < obj_shopkeeper.selector_x_w{
		obj_shopkeeper.selector_x_w -= 175
	}
	//add in sfx for else
	
	switch (obj_shopkeeper.selector_x_w){
		case 200:
			curr_weapon = obj_spike_weapon
			money_spent = 15
			break;
			
		case 375:
			curr_weapon = obj_shuriken_weapon
			money_spent = 30
			break;
		
		case 550:
			curr_weapon = obj_mod_wep_1
			money_spent = 45
			break;
	}
	
	if keyboard_check_pressed(ord("X")) and curr_weapon != CURRWEAPON{
		CURRWEAPON = curr_weapon
		PLAYERMONEY -= money_spent
	//sfx if curr_weapon == CURRWEAPON
	}
}

if BUYPET{
	if (keyboard_check_pressed(ord("D")) and (obj_nekoi.selector_x < max_x)){
		obj_nekoi.selector_x += 175
	}
	//add in sfx for else
	
	else if (keyboard_check_pressed(ord("A")) and (min_x < obj_nekoi.selector_x)){
		obj_nekoi.selector_x -= 175
	}
	//add in sfx for else
	
	switch (obj_nekoi.selector_x){
		case 200:
			curr_pet = obj_basan
			money_spent = 15
			break;
			
		case 375:
			curr_pet = obj_suzaku
			money_spent = 30
			break;
		
		case 550:
			curr_pet = obj_byakko
			money_spent = 45
			break;
		
		case 725:
			curr_pet = obj_boxboy
			money_spent = 100
			break;
	}
	
	if keyboard_check_pressed(ord("X")) and curr_pet != CURRPET{
		instance_destroy(CURRPET)
		CURRPET = curr_pet
		instance_create_depth(obj_zoella.x, obj_zoella.y, -1, CURRPET)
		PLAYERMONEY -= money_spent
	}
	//sfx if curr_pet == CURRPET
}