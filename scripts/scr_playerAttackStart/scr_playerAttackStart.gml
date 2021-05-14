// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerAttackStart(){
	setState(State.AttackStartup);
	setVelocityX(0);
	setGravity(0.1);
	comboCounter = 0;
	attackTimeCount = 0;
}