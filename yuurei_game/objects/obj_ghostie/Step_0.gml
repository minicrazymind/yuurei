
event_inherited();

if attack {
	
	bullet = instance_create_depth(x,y,depth,projectile)
	bullet.is_bad = true
	bullet.direction = point_direction(bullet.x, bullet.y, CURRPLAYER.x, CURRPLAYER.y)
	attack = false
}


if hp <= 0 {
	instance_destroy()	
}