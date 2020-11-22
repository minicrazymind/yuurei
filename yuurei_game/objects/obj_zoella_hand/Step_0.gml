moving_right = target.facing_right


y = target.y + 8

if moving_right {
	x = target.x + 16
} else {
	x = target.x - 16
}

depth = target.depth