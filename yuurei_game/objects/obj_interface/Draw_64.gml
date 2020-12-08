if room == rm_game{
	//1366 x 768 is default rm_width & rm_height respectively
	
	draw_set_halign(fa_left); //draw left
	draw_set_valign(fa_middle); //draw middle of the left
	draw_set_font(fnt_ingame_txt)
	
	//health
	draw_set_color(c_black)
	draw_roundrect(INTERFACESTART,16, 431, 32, false)
	draw_set_color(c_fuchsia)
	
	draw_roundrect(INTERFACESTART,16, PLAYERHP, 32, false)
	
	draw_text(8, 26, "HP")
	
	//mana
	draw_set_color(c_black)
	draw_roundrect(INTERFACESTART,40, 431, 48, false)
	draw_set_color(c_yellow)
	
	draw_roundrect(INTERFACESTART,40, PLAYERMANA, 48, false)
	
	//gun box 
	draw_set_color(c_gray)
	draw_roundrect(camera_x - 150, camera_y - 95, camera_x - 55, camera_y - 31, false)
	draw_sprite_ext(gun_spr, 0, camera_x-103, camera_y-64, 2, 2, 0, -1, 1) //<-- code for when the gun shows up (center anchor)
	
	//pet box 
	draw_set_color(c_gray)
	draw_roundrect(150, camera_y - 95, 55, camera_y - 31, false)
	draw_sprite_ext(pet_spr, 0, 103, camera_y-63, 2, 2, 0, -1, 1) //<-- code for when the pet shows up (center anchor)
	
	//ammo

	for (i = 0; i < CURRWEAPON.ammo; i++) {
		
		draw_sprite_ext(gun_ammo, 0, camera_x-40, camera_y-140 - (CURRWEAPON.ammo_dist * i), 2, 2, 0, -1, 1)
	}

	
	if PAUSED{
		draw_set_alpha(0.5)
		draw_set_color(c_black)
		draw_rectangle(0, 0, camera_x, camera_y, false)
		draw_set_alpha(0.75)
		draw_set_color(c_green)
		draw_roundrect(96, 66, camera_x - 96, camera_y - 66, false)
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_set_font(fnt_title_screen)
		draw_text(camera_x/2 - 100, camera_y/2, "PAUSED")
	}
}

if room == rm_base{
	if BUYPET{
		draw_set_alpha(0.5)
		draw_set_color(c_black)
		draw_rectangle(0, 0, camera_x, camera_y, false)
		draw_set_alpha(0.75)
		draw_set_color(c_fuchsia)
		draw_roundrect(96, 66, camera_x - 96, camera_y - 66, false)
		
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_set_font(fnt_title_screen)
		draw_text(camera_x/2 - 150, 95, "PET STORE")
		
		//need to edit actual money placement to be relative to the length of the num
		draw_text(camera_x - 250, 95, PLAYERMONEY)
		
		draw_sprite_ext(spr_basan, 0, 200, 200, 3, 3, 0, c_basan, 1)
		
		draw_set_font(fnt_ingame_txt) 
		draw_text(150, 270, "BASAN")
		draw_text(150, 290, "15¥")
		
		draw_sprite_ext(spr_suzaku, 0, 375, 200, 3, 3, 0, c_suzaku, 1)
		
		draw_text(325, 270, "SUZAKU")
		draw_text(325, 290, "30¥")
		
		draw_sprite_ext(spr_byakko_idle, 0, 550, 200, 3, 3, 0, c_byakko, 1)
		
		draw_text(500, 270, "BYAKKO")
		draw_text(500, 290, "45¥")
		
		draw_sprite_ext(spr_boxboy_idle, 0, 725, 200, 3, 3, 0, c_boxboy, 1)
		
		draw_text(675, 270, "BOXBOY")
		draw_text(675, 290, "100¥")
		
		draw_sprite(spr_pet_frame, 0, obj_nekoi.selector_x, 195)
		//show_debug_message(obj_nekoi.selector_x)
	}
		
	if BUYWEAPON {
		draw_set_alpha(0.5)
		draw_set_color(c_black)
		draw_rectangle(0, 0, camera_x, camera_y, false)
		draw_set_alpha(0.75)
		draw_set_color(c_maroon)
		draw_roundrect(96, 66, camera_x - 96, camera_y - 66, false)
		
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_set_font(fnt_title_screen)
		draw_text(camera_x/2 - 175, 95, "WEAPON STORE")
		
		//need to edit actual money placement to be relative to the length of the num
		draw_text(camera_x - 250, 95, PLAYERMONEY)
		
		draw_sprite_ext(spr_spike_weapon, 0, 200, 200, 3, 3, 0, c_spike, 1)
		
		draw_set_font(fnt_ingame_txt) 
		draw_text(150, 270, "SPIKES")
		draw_text(150, 290, "15¥")
		
		draw_sprite_ext(spr_shuriken, 0, 375, 200, 3, 3, 0, c_shuriken, 1)

		draw_text(325, 270, "E.SHURIKEN")
		draw_text(325, 290, "30¥")
		
		draw_sprite_ext(spr_lightning_weapon, 0, 550, 200, 3, 3, 0, c_lightning, 1)
		
		draw_text(500, 270, "LIGHTNING")
		draw_text(500, 290, "500¥")
		
		draw_sprite(spr_pet_frame, 0, obj_shopkeeper.selector_x_w, 195)

	}
}