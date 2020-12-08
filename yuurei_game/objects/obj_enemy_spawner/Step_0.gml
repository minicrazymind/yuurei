randomize()

if keyboard_check_pressed(ord("O")) {
	enem = instance_create_depth(mouse_x, mouse_y, 0, obj_enemy_1)
}

if keyboard_check_pressed(ord("K")) {
	enem = instance_create_depth(mouse_x, mouse_y, 0, obj_ghostie)
}


if collision_circle(x, y, 500, CURRPLAYER, 0, 0) {
	is_trigged = true
}

if is_trigged {
	if summon_timer > 0 {
		summon_timer -= 1
	}

	if summon_timer <= 0 {
		if total_enems > 0 {
			summon = true	
		}
	}

	if summon and total_enems > 0 {
		if ghosties > 0 and onis > 0 {
			_flip = irandom(100)
			if _flip > 60 {
				enem = instance_create_depth(x + irandom(range), y + irandom(range), 0, obj_enemy_1)
				onis -= 1
			} else {
				enem = instance_create_depth(x + irandom(range), y + irandom(range), 0, obj_ghostie)
				ghosties -= 1
			}
		} else if ghosties > 0 {
			enem = instance_create_depth(x + irandom(range), y + irandom(range), 0, obj_ghostie)
			ghosties -= 1
		} else {
			enem = instance_create_depth(x + irandom(range), y + irandom(range), 0, obj_enemy_1)
			onis -= 1
		}
		total_enems -= 1
		summon = false
		summon_timer = max_summon_timer
	}
}