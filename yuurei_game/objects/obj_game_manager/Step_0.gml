
if keyboard_check_pressed(ord("M")) {
	room_restart()	
}


if keyboard_check_pressed(ord("L")) {
	room_goto(rm_start)
}


if PLAYERHP < 0 { //Here just cuz lol
	PLAYERHP = 0	
}

if room == rm_game{
	if keyboard_check_pressed(vk_escape){
		PAUSED = !PAUSED
		if PAUSED{
			instance_deactivate_all(true)
			instance_activate_object(obj_interface)
		}
		else{
			instance_activate_all()
		}
	}
	
	//DEV WEAPON SPAWNER
	if keyboard_check_pressed(ord("Q")) { //NOTE TO SELF: Later, fix switching weapons so that ammo of prev wep is kept
		if CURRWEAPON.wep_name == "Shuriken" {
			instance_destroy(CURRWEAPON)
			CURRWEAPON = instance_create_depth(9000,9000,0,obj_spike_weapon)
			obj_interface.gun_spr = spr_spike_weapon
			obj_interface.gun_ammo = spr_spike_projectile
				
		} else if CURRWEAPON.wep_name == "Spike" {
			instance_destroy(CURRWEAPON)	
			CURRWEAPON = instance_create_depth(9000,9000,0,obj_dart_weapon)
			obj_interface.gun_spr = spr_dart
			obj_interface.gun_ammo = spr_dart
			
		} else if CURRWEAPON.wep_name == "Dart"{
			instance_destroy(CURRWEAPON)
			CURRWEAPON = instance_create_depth(9000,9000,0,obj_mod_wep_1)
			obj_interface.gun_spr = spr_lightning_weapon
			obj_interface.gun_ammo = spr_spike_projectile
		} else if CURRWEAPON.wep_name == "Mod_Wep_1" {
			instance_destroy(CURRWEAPON)
			CURRWEAPON = instance_create_depth(9000,9000,0,obj_shuriken_weapon)
			obj_interface.gun_spr = spr_shuriken
			obj_interface.gun_ammo = spr_shuriken
		}
	}
}
/*
if room == rm_start {
	if keyboard_check_pressed(vk_space) {
		room_goto(rm_game)
	}
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_base)
	}
}
*/
if room == rm_base{
	if BUYPET{
		if keyboard_check_pressed(vk_escape){
			BUYPET = false
		}
	}
	
	if BUYWEAPON{
		if keyboard_check_pressed(vk_escape){
			BUYWEAPON = false
		}
	}
}

if room == rm_start{
	if mouse_check_button_pressed(mb_left){
		if point_in_rectangle(mouse_x, mouse_y, 160,453,325,503){ //start
			room_goto(rm_game)
		}
		
		else if point_in_rectangle(mouse_x, mouse_y, 165,526, 390, 576){ //options
			room_goto(rm_base)
		}
	}
}

