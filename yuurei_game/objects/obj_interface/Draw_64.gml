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