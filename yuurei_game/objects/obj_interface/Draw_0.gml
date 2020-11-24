if room == rm_game{
	//1366 x 768 is default rm_width & rm_height respectively
	
	draw_set_halign(fa_left); //draw left
	draw_set_valign(fa_middle); //draw middle of the left
	draw_set_font(fnt_ingame_txt)
	
	//health
	draw_set_color(c_black)
	draw_rectangle(interface_start,16, 432, 32, false)
	draw_set_color(c_fuchsia)
	
	draw_rectangle(interface_start,16, life_x, 32, false)
	
	draw_text(8, 26, "HP" + string(PLAYERHP))
	
	//mana
	draw_set_color(c_black)
	draw_rectangle(interface_start,40, 432, 48, false)
	draw_set_color(c_yellow)
	
	draw_rectangle(interface_start,40, mana_x, 48, false)
	
	//gun box 
	draw_set_color(c_gray)
	draw_rectangle(room_width - 150, room_height - 95, room_width - 55, room_height - 31, false)
	draw_sprite(gun_spr, 0, room_width-103, room_height-64) //<-- code for when the gun shows up (center anchor)
	
	//pet box 
	draw_set_color(c_gray)
	draw_rectangle(150, room_height - 95, 55, room_height - 31, false)
	draw_sprite(pet_spr, 0, 103, room_height-64) //<-- code for when the pet shows up (center anchor)
}

if room == rm_start{
	
	draw_set_halign(fa_left); //draw left
	draw_set_valign(fa_middle); //draw middle of the left
	draw_set_font(fnt_title_screen)
	
	draw_text(160, 433, "START")
	draw_text(165, 476, "OPTIONS")
	
}
