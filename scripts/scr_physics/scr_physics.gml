// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_physics(entity){
	with(entity){
		var velocityX = getVelocityX();
		var velocityY = getVelocityY();
		
		//gravity
		if(getState() == State.Idle || getState() == State.Hurt){
			if(!getGrounded() && getGravity()){
				//we're falling.
				if(velocityY < 10){
					//Fall faster until terminal velocity.
					velocityY += 0.2;
				}
			}else{
				//we're standing.
				if(velocityY > 0){
					//If we're falling, stop.
					velocityY = 0;
				}
			}
		}
		
		//There are no more changes to velocity before the update position step.
		//set velocity.
		setVelocityX(velocityX);
		setVelocityY(velocityY);
		
		
		//update position.
		//x position update.
		var dX = roundToNearestOne(velocityX);
		
		//do nothing if we aren't moving.
		if(dX != 0){
			//find direction of movement
			var xDir = 1;
			if(dX < 1){
				xDir = -1;
			}
			var c = 0;
			//along every step of movement, check if we collide with a wall.
			while(c < abs(dX)){
				if(place_meeting(x+xDir,y,obj_wall)){
					//we hit a wall, stop moving.
					break;
				}
				x+=xDir;
				c++;
			}
		}
		
		
		//y position update.
		var dY = roundToNearestOne(velocityY);
		//do nothing if we aren't moving.
		if(dY != 0){
			//find direction of movement
			var yDir = 1;
			if(dY < 1){
				yDir = -1;
			}
			var c = 0;
			//along every step of movement, check if we collide with a wall.
			while(c < abs(dY)){
				if(place_meeting(x,y+yDir,obj_wall)){
					//we hit a wall, stop moving.
					break;
				}
				y+=yDir;
				c++;
			}
		}
		
		
		
		//idle "snappiness"
		if(getState() == State.Idle){
			if(velocityX != 0){
				velocityX = 0;
				setVelocityX(0);
				setVelocityX(velocityX);
			}
		}
	}
}

//gamemaker's "round" function only rounds to the nearest even number.
//so I decided to make my own round function that's fair.
function roundToNearestOne(num){
	var decimal = num mod 1;
	var numSign = 1;
	if(num < 0){ numSign = -1; }
	if(decimal == 0){ return num;
	}else if(abs(decimal) < 0.5){ return num-decimal;
	}else{ return num-decimal+1; }
	}else{ return num-decimal+1*numSign; }
}