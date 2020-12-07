event_inherited()

if facing_right {    //However, the x pos changes as the player moves and changes direction
	if moving_right {
		x = target.bbox_right //These numbers are micro tweaks to make the hand look better
	} else if moving_left {
		x = target.bbox_right
	} else {
		x = target.bbox_right - 4
	}
} else {
	if moving_right {
		x = target.bbox_left
	} else if moving_left {
		x = target.bbox_left
	} else {
		x = target.bbox_left + 4
	}
}