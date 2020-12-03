
if keyboard_check_pressed(ord("M")) {
	room_restart()	
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
	if keyboard_check_pressed(ord("Q")) { //NOTE TO SELF: Later, fix switching weapons so that ammo of prev wep is kept
		if CURRWEAPON == obj_shuriken_weapon {
			instance_create_depth(x,y,0,obj_spike_weapon)
			CURRWEAPON = obj_spike_weapon
			obj_interface.gun_spr = spr_spike_weapon
			obj_interface.gun_ammo = spr_spike_projectile
			instance_destroy(obj_shuriken_weapon)	
		} else if CURRWEAPON == obj_spike_weapon {
			instance_create_depth(x,y,0,obj_shuriken_weapon)
			CURRWEAPON = obj_shuriken_weapon
			obj_interface.gun_spr = spr_shuriken
			obj_interface.gun_ammo = spr_shuriken
			instance_destroy(obj_spike_weapon)	
		}
	}
}

if room == rm_start {
	if keyboard_check_pressed(vk_space) {
		room_goto(rm_game)
	}
}

