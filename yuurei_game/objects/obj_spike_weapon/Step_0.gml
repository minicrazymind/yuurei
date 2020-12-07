depth = user_hand.depth + 1   //Makes sure weapon is behind hand and in front of player sprite
randomize()

if room == rm_game { //Checks if the gun should be firing and if we're in rm_game
	if mouse_check_button_pressed(mb_left) and ready_to_fire and ammo > 0{
		ready_to_fire = false
		attack_timer = attack_speed
		ammo -= 3
		
		if point_distance(x, y, mouse_x, mouse_y) < 5 {
			_proj1 = instance_create_depth(x,y,depth,projectile)
			_proj1.direction = point_direction(_proj1.x, _proj1.y, _proj1.target_x+50, _proj1.target_y+50)
			_proj1.image_angle = point_direction(_proj1.x, _proj1.y, _proj1.target_x+50, _proj1.target_y+50)
			_proj1.is_bad = false
			_proj2 = instance_create_depth(x,y,depth,projectile)
			_proj2.direction = point_direction(_proj2.x, _proj2.y, _proj2.target_x-50, _proj2.target_y-50)
			_proj2.is_bad = false
			_proj2.image_angle = point_direction(_proj1.x, _proj1.y, _proj1.target_x-50, _proj1.target_y-50)
			_proj3 = instance_create_depth(x,y,depth,projectile)
			_proj3.is_bad = false
		}
		else {
			_proj1 = instance_create_depth(x,y,depth,projectile)
			_proj1.direction = point_direction(_proj1.x, _proj1.y, _proj1.target_x+10, _proj1.target_y+10)
			_proj1.image_angle = point_direction(_proj1.x, _proj1.y, _proj1.target_x+10, _proj1.target_y+10)
			_proj1.is_bad = false
			_proj2 = instance_create_depth(x,y,depth,projectile)
			_proj2.direction = point_direction(_proj2.x, _proj2.y, _proj2.target_x-10, _proj2.target_y-10)
			_proj2.image_angle = point_direction(_proj1.x, _proj1.y, _proj1.target_x-10, _proj1.target_y-10)
			_proj2.is_bad = false
			_proj3 = instance_create_depth(x,y,depth,projectile)	
			_proj3.is_bad = false
		}
		
		
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
		if ammo == 0 {
			ability_activate = true	
			ammo = -1
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
		image_xscale = 0.5
	} else {
		image_xscale = -0.5
	}
	
	
	if ability_activate {
		
		for (i = 0; i < 21; i++) {
			rand_x = irandom(room_width)
			rand_y = irandom(room_height)
			_proj = instance_create_depth(x,y,depth,projectile)
			_proj.direction = point_direction(_proj.x, _proj.y, rand_x, rand_y)
			_proj.image_angle = point_direction(_proj.x, _proj.y, rand_x+15, rand_y+15)
			_proj.is_bad = false
		}
		
		ability_activate = false
	}
	
}

else {
	ready_to_fire = true //If we switch off this weapon you can fire it again when you take it out
}

x = user_hand.x       //Positions the weapon properly, we'll need to manually change this for each wep
y = user_hand.y - 3

