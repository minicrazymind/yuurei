if (point_distance(x,y,obj_zoella.x,obj_zoella.y) <= 50) and (keyboard_check_pressed(ord("Z"))){
	if BUYPET {
		BUYPET = false
	} else {
		BUYPET = true
	}
	selector_x = 200
}