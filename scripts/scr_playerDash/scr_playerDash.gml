// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerDash(gpH,gpV){
	if(dashAvailable){
		switch(getState())
		{
		case State.Idle:
		case State.Cannonball:
		case State.Focusing:
			var divisor = sqrt(sqr(gpH)+sqr(gpV));
			var gpHNew = gpH/(divisor);
			var gpVNew = gpV/(divisor);
			
			setVelocityX(gpHNew*dashSpeed);
			setVelocityY(gpVNew*dashSpeed);
			setState(State.Dash);
			dashTimeCount = 0;
			dashAvailable = false;
			
			show_debug_message(string(getVelocityX())+" "+string(getVelocityY()));
			
			break;
		}
	}
}