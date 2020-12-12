if room == rm_start{
	
	draw_set_halign(fa_left); //draw left
	draw_set_valign(fa_middle); //draw middle of the left
	draw_set_font(fnt_title_screen)
	

	//draw_rectangle(160,453,325,503,false) Coordinates for the rectangle around the text
	draw_set_color(c_start)
	
	draw_text(160, 483, "START")

	//draw_rectangle(165,526, 390, 576,false) Coordinates for the rectangle around the text
	draw_set_color(c_options)
	
	draw_text(165, 556, "OPTIONS")
	
}

if (room == rm_end) {
    draw_set_font(fnt_title_screen);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(room_width/2, room_height/2 - 70, "GAME OVER");
    draw_set_font(fnt_title_screen);
    draw_text(room_width/2, room_height/2 + 20, "Press nya to play again");
}

