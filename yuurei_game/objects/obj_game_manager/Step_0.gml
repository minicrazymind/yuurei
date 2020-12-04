
if keyboard_check_pressed(ord("M")) {
	room_restart()	
}


if keyboard_check_pressed(ord("L")) {
	room_goto(rm_start)
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
			CURRWEAPON = instance_create_depth(9000,9000,0,obj_shuriken_weapon)
			obj_interface.gun_spr = spr_shuriken
			obj_interface.gun_ammo = spr_shuriken
		}
	}
}

if room == rm_start {
	if keyboard_check_pressed(vk_space) {
		room_goto(rm_game)
	}
}

