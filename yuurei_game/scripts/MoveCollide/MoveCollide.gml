
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveCollide(){
	
	var total_xspd = xspd + x_remainder    //apply the remainders we saved last frame
	var total_yspd = yspd + y_remainder
	
	x_remainder = total_xspd % 1  //save the remainder for next frame
	y_remainder = total_yspd % 1
	
	// now let's apply horizontal movement
	var xspd_floored = floor(abs(total_xspd)) * sign(total_xspd) //cut off the remainder for this frame
	
	if (xspd_floored != 0){
		for (var i = 0; i < abs(xspd_floored); i++) {
			if (place_meeting(x+sign(xspd_floored), y, obj_collidable)){
				xspd = 0
				x_remainder = 0
				
				bumped_into_something = true
				break //leave the for loop if there's a collidable object 1 pixel ahead
			}
			x += sign(xspd_floored) // move one pixel in our current direction for each iteration of for loop
		}
	}
	
	//repeat for y movement
	var yspd_floored = floor(abs(total_yspd)) * sign(total_yspd) //cut off the remainder for this frame
	
	if (yspd_floored != 0){
		for (var i = 0; i < abs(yspd_floored); i++) {
			if (place_meeting(x, y+sign(yspd_floored), obj_collidable)){
				yspd = 0
				y_remainder = 0
				
				bumped_into_something = true
				break //leave the for loop if there's a collidable object 1 pixel ahead
			}
			y += sign(yspd_floored) // move one pixel in our current direction for each iteration of for loop
		}
	}
	
	//screen wrapping
	//if x > room_width{
	//    x = 0
	//	x_remainder = 0
	//}
	
	//if x < 0{
	//    x = room_width
	//	x_remainder = 0
	//}
	
}