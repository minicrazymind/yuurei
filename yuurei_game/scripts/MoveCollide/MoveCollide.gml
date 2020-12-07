 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveCollide(){
	
	var total_hspd = hspd + x_remainder    //apply the remainders we saved last frame
	var total_vspd = vspd + y_remainder
	
	x_remainder = total_hspd % 1  //save the remainder for next frame
	y_remainder = total_vspd % 1
	
	// now let's apply horizontal movement
	var hspd_floored = floor(abs(total_hspd)) * sign(total_hspd) //cut off the remainder for this frame
	
	if (hspd_floored != 0){
		for (var i = 0; i < abs(hspd_floored); i++) {
			if (place_meeting(x+sign(hspd_floored), y, obj_collidable)){
				hspd = 0
				x_remainder = 0
				
				bumped_into_something = true
				break //leave the for loop if there's a collidable object 1 pixel ahead
			}
			x += sign(hspd_floored) // move one pixel in our current direction for each iteration of for loop
		}
	}
	
	//repeat for y movement
	var vspd_floored = floor(abs(total_vspd)) * sign(total_vspd) //cut off the remainder for this frame
	
	if (vspd_floored != 0){
		for (var i = 0; i < abs(vspd_floored); i++) {
			if (place_meeting(x, y+sign(vspd_floored), obj_collidable)){
				vspd = 0
				y_remainder = 0
				
				bumped_into_something = true
				break //leave the for loop if there's a collidable object 1 pixel ahead
			}
			y += sign(vspd_floored) // move one pixel in our current direction for each iteration of for loop
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