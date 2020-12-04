
event_inherited();

if attack {
	weapon.is_triggered = true
}


if hp <= 0 {
	instance_destroy(hand)
	instance_destroy(weapon)
	instance_destroy()	
}