
if keyboard_check_pressed(ord("M")) {
	room_restart()	
}


if keyboard_check_pressed(ord("L")) {
	room_goto(rm_start)
}

if (room == rm_game or room == rm_game_2 ) {
    INGAME = true;
} else {
    INGAME = false;
}

if room == rm_game or room == rm_game_2{
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
	
	
	if PLAYERHP <= 0 { //Here just cuz lol
		PLAYERHP = 0	
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


if room == rm_base{
	if BUYPET or BUYWEAPON{            //Compressed code here since we never open both shops at once

		if keyboard_check_pressed(vk_escape){
			BUYPET = false
			BUYWEAPON = false
		}
	}
	
	if keyboard_check_pressed(ord("G")) {
		room_goto(rm_game)
		obj_zoella.x = x_init
		obj_zoella.y = y_init
		CURRPET.x = x_init
		CURRPET.y = y_init
	}
}

if room == rm_start{
	if mouse_check_button_pressed(mb_left){
		if point_in_rectangle(mouse_x, mouse_y, 160,453,325,503){ //start
			//audio_sound_pitch(snd_selected, random_range(0.8, 1.2))
			audio_play_sound(snd_selected, 0, false)
			_fader = instance_create_depth(x,y,0,obj_fade)
			_fader.room_to_go = rm_base
		}
		
		else if point_in_rectangle(mouse_x, mouse_y, 165,526, 390, 576){ //options
			//room_goto(rm_base)
			audio_play_sound(snd_selected, 0, false)
		}
	}
}

if (audio_is_playing(snd_bgm_base) == false) and (room == rm_base){
    audio_stop_all();
    audio_play_sound(snd_bgm_base, 1000, false);

//change to new game music
} else if (audio_is_playing(snd_bgm_game) == false) and (room == rm_game or room == rm_game_2){
    audio_stop_all();
    audio_play_sound(snd_bgm_game, 1000, false);
	
	
} /*else if (audio_is_playing(m_rivalry) == false) and (room == rm_start){
    audio_stop_all();
    audio_play_sound(m_rivalry, 1000, false);
}*/

if (INGAME == true and PLAYERHP <= 0) {
    audio_stop_all();
    room_goto(rm_end);
}
