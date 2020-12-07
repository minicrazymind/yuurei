// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Movement(){
	xprev = x
	yprev = y

	// Handle sub-pixel movement
	xVelSub += xVel
	yVelSub += yVel

	var xVelNew = round(xVelSub);
	var yVelNew = round(yVelSub);

	xVelSub -= xVelNew
	yVelSub -= yVelNew

	if ((xVelNew == 0) && (yVelNew == 0))
	    exit
    
	// Speed Directions
	var xdir = sign(xVelNew)
	var ydir = sign(yVelNew)

	// Vertical Movement
	repeat(abs(yVelNew))
	{
	    //Actually move the object if no obstacles are present
	    if !place_meeting(x, y + ydir, obj_no_move)
	        y += ydir
	    else
	    {
	        yVel = 0
	        break
	    }
	}

	// Horizontal Movement
	repeat(abs(xVelNew))
	{

	    //Actually move the object if no obstacles are present
	    if !place_meeting(x + xdir, y, obj_no_move)
	        x += xdir
	    else
	    {
	        xVel = 0
	        break
	    }
	}

}