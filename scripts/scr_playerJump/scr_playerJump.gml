// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerJump(){
	if(getState() == State.Idle){
		if(getGrounded()){
			setVelocityY(jumpVelocity);
			jumpTime = 1;
			// setAnimation(jump);
		} else if(cannonballAvailable){
			setVelocityY(jumpVelocity);
			// setAnimation(cannonball);
			setState(State.Cannonball);
		}
	}
}