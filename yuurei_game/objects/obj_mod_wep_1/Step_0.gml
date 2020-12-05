event_inherited()

x = user_hand.x       //Positions the weapon properly, we'll need to manually change this for each wep
y = user_hand.y - 3

if ability_activate {
		
	for (i = 0; i < 100; i++) {
		rand_x = irandom(room_width)
		rand_y = irandom(room_height)
		_proj = instance_create_depth(x,y,depth,projectile)
		_proj.direction = point_direction(_proj.x, _proj.y, rand_x, rand_y)
		_proj.image_angle = point_direction(_proj.x, _proj.y, rand_x+15, rand_y+15)
		_proj.is_bad = false
	}
	
	for (i = 0; i < 100; i++) {
		rand_x = irandom(room_width)
		rand_y = irandom(room_height)
		_proj = instance_create_depth(x,y,depth,obj_shuriken_projectile)
		_proj.direction = point_direction(_proj.x, _proj.y, rand_x, rand_y)
		_proj.image_angle = point_direction(_proj.x, _proj.y, rand_x+15, rand_y+15)
		_proj.is_bad = false
	}
	
	
	for (i = 0; i < 100; i++) {
		rand_x = irandom(room_width)
		rand_y = irandom(room_height)
		_proj = instance_create_depth(x,y,depth,obj_spike_projectile)
		_proj.direction = point_direction(_proj.x, _proj.y, rand_x, rand_y)
		_proj.image_angle = point_direction(_proj.x, _proj.y, rand_x+15, rand_y+15)
		_proj.is_bad = false
	}
	
	
	ability_activate = false
		
}