depth = user_hand.depth + 1   //Makes sure weapon is behind hand and in front of player sprite

if room == rm_game { //Checks if the gun should be firing and if we're in rm_game
	if mouse_check_button_pressed(mb_left) and ready_to_fire and ammo > 0{
		ready_to_fire = false
		attack_timer = attack_speed
		ammo -= 1
		instance_create_depth(x,y,depth,projectile)
	}
	
	if ready_to_fire == false { //If shoot is on cooldown, countdown
		attack_timer -= 1
	} 
	if attack_timer < 0 {       //When countdown ends, we are ready to shoot
		ready_to_fire = true
	}
	

	if keyboard_check_pressed(ord("R")) {
		reload_timer = reload_speed
		reloading = true
		if ammo <= 0 {
			ability_activate = true	
		}
	}
	if reloading {
		reload_timer -= 1
	}
	
	if reload_timer < 0 {
		reload_timer = 1
		ammo = max_ammo
		reloading = false
	}
	
	
	if mouse_x > x {
		image_xscale = 1
	} else {
		image_xscale = -1
	}
	
}

else {
	ready_to_fire = true //If we switch off this weapon you can fire it again when you take it out
}