if keyboard_check_pressed(ord("O")) {
	enem = instance_create_depth(mouse_x, mouse_y, 0, obj_enemy_1)
}

if keyboard_check_pressed(ord("K")) {
	enem = instance_create_depth(mouse_x, mouse_y, 0, obj_ghostie)
}