
depth = -y
if (!place_meeting(x, y+yspd, obj_collidable)){
	y += yspd
}

if (!place_meeting(x+xspd, y, obj_collidable)){
	x += xspd
}



if move_up {
	yspd = -mspd
} else if move_down {
	yspd = mspd
} else {
	yspd = 0
}

if move_right {
	xspd = mspd
} else if move_left {
	xspd = -mspd
} else {
	xspd = 0
}

if yspd != 0 or xspd != 0 {
	is_moving = true	
} else {
	is_moving = false	
}


/*
if is_moving {
	MoveCollide();
}
*/
