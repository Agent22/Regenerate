// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerAttackConfirm(){
	if(getState() == State.SuperCharging){
		attackTimeCount = attackFPS*weapon.combo[comboCounter].startupFrames;
		setState(State.AttackActive);
	}
}