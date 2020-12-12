
if PLAYERHP > 0 {
	if is_enemy == false {
		user_hand = CURRPLAYER.hand
	}
	depth = user_hand.depth + 1   //Makes sure weapon is behind hand and in front of player sprite
	if room == rm_game or room == rm_game_2{ //Checks if the gun should be firing and if we're in rm_game
	
	
		if mouse_check_button_pressed(mb_left) and is_enemy == false and ready_to_fire and ammo > 0{
			ready_to_fire = false
			attack_timer = attack_speed
			ammo -= 1
			bullet = instance_create_depth(x,y,depth,projectile)
			bullet.is_bad = false
		} else if is_enemy and is_triggered and ready_to_fire and ammo > 0 {
			ready_to_fire = false
			attack_timer = attack_speed
			ammo -= 1
			bullet = instance_create_depth(x,y,depth,projectile)
			bullet.is_bad = true
			bullet.direction = point_direction(bullet.x, bullet.y, CURRPLAYER.x, CURRPLAYER.y)
			bullet.image_angle = point_direction(bullet.x, bullet.y, CURRPLAYER.x, CURRPLAYER.y)
			is_triggered = false
		}
	
		if ready_to_fire == false { //If shoot is on cooldown, countdown
			attack_timer -= 1
		} 
		if attack_timer < 0 {       //When countdown ends, we are ready to shoot
			ready_to_fire = true
		}
	

		if (keyboard_check_pressed(ord("R")) or is_reload) and ammo >= 0 {
			reload_timer = reload_speed
			reloading = true
			is_reload = false
			if ammo == 0 {
				ammo = -1
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
	
		if is_enemy == false {
			target_x = mouse_x
			target_y = mouse_y
		} else {
			target_x = CURRPLAYER.x
			target_y = CURRPLAYER.y
		}


	
		if target_x > x {
			image_angle = point_direction(x, y, target_x, target_y)
		} else {
			image_angle = -point_direction(x, target_y, target_x, y)
		}
	
	
	
	
	}

	else {
		ready_to_fire = true //If we switch off this weapon you can fire it again when you take it out
	}
}