if PLAYERHP > 0 {
	event_inherited()

	x = user_hand.x       //Positions the weapon properly, we'll need to manually change this for each wep
	y = user_hand.y - 3


	show_debug_message(ammo)
	if ability_activate {
		extra_bullet = true	
		ability_activate = false
	}

	if extra_bullet {
		extra_bullet_timer = extra_bullet_time
		extra_bullet = false
	}

	if extra_bullet_timer >= 0 {
		extra_bullet_timer -= 1
	}

	if extra_bullet_timer == 0 {
		extra_bullet_timer = -1	
		if is_enemy {
			bullet = instance_create_depth(x,y,depth,obj_ghost_bullet)
			bullet.is_bad = true	
			bullet.direction = point_direction(bullet.x, bullet.y, CURRPLAYER.x, CURRPLAYER.y)
		} else {
			bullet = instance_create_depth(x,y,depth,obj_ghost_bullet)
			bullet.is_bad = false	
		}

	}

	if ammo == 0 {
		is_reload = true
	}
}