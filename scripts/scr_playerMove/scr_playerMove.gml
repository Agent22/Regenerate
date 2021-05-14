
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerMove(input){
	if(getState() == State.Idle || getState() == State.Cannonball){
		if(input > 0){
			setVelocityX(moveVelocity);
		} else {
			setVelocityX(-moveVelocity);
		}
	}
}