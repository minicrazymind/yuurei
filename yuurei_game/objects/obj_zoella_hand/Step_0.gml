
moving_right = target.move_right
moving_left = target.move_left
facing_right = target.facing_right


y = target.y + 8

if facing_right {
	if moving_right {
		x = target.bbox_right + 8
	} else if moving_left {
		x = target.bbox_right
	} else {
		x = target.bbox_right
	}
} else {
	if moving_right {
		x = target.bbox_left
	} else if moving_left {
		x = target.bbox_left - 6
	} else {
		x = target.bbox_left
	}
}

depth = target.depth - 1
