depth = -y

x += xspd
y += yspd

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

//MoveCollide();