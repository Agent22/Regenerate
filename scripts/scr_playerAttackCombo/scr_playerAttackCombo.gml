// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerAttackCombo(){
	setState(State.AttackStartup);
	comboCounter++;
	if(comboCounter >= array_length(weapon.combo)){
		//Combo is over, start a new one.
		comboCounter = 0;
	}
	attackTimeCount = 0;
}