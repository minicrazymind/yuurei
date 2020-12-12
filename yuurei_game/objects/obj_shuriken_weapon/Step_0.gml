if PLAYERHP > 0 {
	event_inherited()

	x = user_hand.x       //Positions the weapon properly, we'll need to manually change this for each wep
	y = user_hand.y - 3

	if ability_activate {
		
	

		_proj = instance_create_depth(x,y,depth,projectile)
		_proj.direction = point_direction(_proj.x, _proj.y, _proj.x + 100, _proj.y)
		_proj.is_bad = false
	
		_proj = instance_create_depth(x,y,depth,projectile)
		_proj.direction = point_direction(_proj.x, _proj.y, _proj.x - 100, _proj.y)
		_proj.is_bad = false
	
		_proj = instance_create_depth(x,y,depth,projectile)
		_proj.direction = point_direction(_proj.x, _proj.y, _proj.x, _proj.y + 100)
		_proj.is_bad = false
	
		_proj = instance_create_depth(x,y,depth,projectile)
		_proj.direction = point_direction(_proj.x, _proj.y, _proj.x, _proj.y - 100)
		_proj.is_bad = false
	
		ability_activate = false
	}
}