if (point_distance(x,y,obj_zoella.x,obj_zoella.y) <= 50) and (keyboard_check_pressed(ord("Z"))){
	if BUYWEAPON {
		BUYWEAPON = false
	} else {
		BUYWEAPON = true
	}
	selector_x_w = 200
}