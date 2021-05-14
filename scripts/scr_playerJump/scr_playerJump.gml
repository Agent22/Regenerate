// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerJump(){
	if(getState() == State.Idle){
		if(getGrounded()){
			setVelocityY(jumpVelocity);
			jumpTime = 30;
			jumpCancelWindow = 60;
			// setAnimation(jump);
		} else if(cannonballAvailable){
			setVelocityY(jumpVelocity);
			jumpTime = 30;
			jumpCancelWindow = 60;
			// setAnimation(cannonball);
			setState(State.Cannonball);
		}
	}
}