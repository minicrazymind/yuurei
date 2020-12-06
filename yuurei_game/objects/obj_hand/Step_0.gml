
moving_right = target.move_right      //We update these variables to know where the hand should be
moving_left = target.move_left
facing_right = target.facing_right

image_xscale = 0.5
image_yscale = 0.5

y = target.y + 6     //Places the hand at an okay looking place

if facing_right {    //However, the x pos changes as the player moves and changes direction
	if moving_right {
		x = target.bbox_right + 4 //These numbers are micro tweaks to make the hand look better
	} else if moving_left {
		x = target.bbox_right
	} else {
		x = target.bbox_right
	}
} else {
	if moving_right {
		x = target.bbox_left
	} else if moving_left {
		x = target.bbox_left - 4
	} else {
		x = target.bbox_left
	}
}

depth = target.depth - 2  //Ensures that the hand is in front of the player
                          //We also leave enough room for weapon to go in between
