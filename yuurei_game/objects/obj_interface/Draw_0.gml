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

