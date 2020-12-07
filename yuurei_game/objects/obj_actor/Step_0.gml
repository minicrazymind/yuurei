depth = -y

if move_up{		// 90 degree angle to move up
	move_dir = 90
	if move_left{
		move_dir += 45				// +45 for up-left
	}else if move_right{
		move_dir -= 45				// -45 for up-right
	} 
	sprite_index = run_spr
}else if move_down{
	move_dir = 270					// 270 degree angle to move down
	if move_left{
		move_dir -= 45				// -45 for down-left
	}else if move_right{
		move_dir += 45				// +45 for down-right
	} 
	sprite_index = run_spr
}else{	
	if move_left{
		move_dir = 180				// 180 degree angle to move left
		sprite_index = run_spr
	}else if move_right{
		move_dir = 0				// 0 degrees to move right
		sprite_index = run_spr

	} else {
		sprite_index = idle_spr
	}
}
hspd = lengthdir_x(mspd,move_dir)	// find x&y speed by using angle and base speed
vspd = lengthdir_y(mspd,move_dir)

if move_up
or move_left
or move_down
or move_right{		// if pressing any move keys, move player!
	MoveCollide()
	is_moving = true
} else {
	is_moving = false	
}




image_yscale = 0.5
