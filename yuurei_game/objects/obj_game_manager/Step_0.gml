
if keyboard_check_pressed(ord("M")) {
	room_restart()	
}

if room == rm_game{
	if keyboard_check_pressed(vk_escape){
		PAUSED = !PAUSED
		if PAUSED{
			instance_deactivate_all(true)
			instance_activate_object(obj_interface)
		}
		else{
			instance_activate_all()
		}
	}
}

if room == rm_start {
	if keyboard_check_pressed(vk_space) {
		room_goto(rm_game)
	}
}