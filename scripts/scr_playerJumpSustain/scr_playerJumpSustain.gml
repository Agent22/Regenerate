// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerJumpSustain(held){
	if(held && jumpTime > 0){
		var sustainVelocity = jumpVelocity * sqrt((jumpTime+10)/40);
		setVelocityY(sustainVelocity);
	}else if(!held && jumpCancelWindow > 0){
		jumpTime = 0;
		jumpCancelWindow = 0;
		setVelocityY(0);
	}
}