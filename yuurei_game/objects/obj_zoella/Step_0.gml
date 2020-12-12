event_inherited()

if room == rm_game{
	mspd = 2
}
else if room == rm_base{
	mspd = 1.5
}


if !BUYPET and !BUYWEAPON{
	if keyboard_check(ord("W")) {
		move_up = true
		move_down = false
	} else if keyboard_check(ord("S")) {
		move_down = true
		move_up = false
	} else {
		move_down = false
		move_up = false
	}

	if keyboard_check(ord("A")) {
		move_left = true
		move_right = false
	} else if keyboard_check(ord("D")) {
		move_right = true
		move_left = false
	} else {
		move_left = false
		move_right = false
	}



	if mouse_x > x {
		image_xscale = 0.5
		facing_right = true
	} else if mouse_x < x {
		image_xscale = -0.5
		facing_right = false
	}	
} else {
	move_up = false   //Player no longer keeps moving when shop opens
	move_down = false
	move_left = false
	move_right = false
}


if die == true {
	instance_destroy(weapon)
	instance_destroy(hand)
	instance_destroy(CURRPET)
	instance_destroy()
}