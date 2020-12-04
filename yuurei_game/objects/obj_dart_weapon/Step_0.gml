
event_inherited()

x = user_hand.x       //Positions the weapon properly, we'll need to manually change this for each wep
y = user_hand.y - 3


if ability_activate {
	//Shoot second bullet
	ability_activate = false
}

if ammo == 0 {
	is_reload = true	
	ammo = -1
}