// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerAttack(){
	/*
	switch(player.GetState())
	
	switch(getState())
	{
	case idle:
	case State.Idle:
	case State.Cannonball:
	case State.Focusing:
		scr_playerAttackStart();
		break;
	case attackEndLag:
	case State.AttackEndLag:
		scr_playerAttackCombo();
		break;
	case omniDash:
		scr_playerAttackDash();
	case State.Dash:
		//scr_playerAttackDash();
		break;
	}
	/*
	What do I need?
	Definitely a timer.
	I need to know when the attackStart happens. Then, if I didn't hold down during the super move window,
	I initiate the attack. The attack happens, and we enter the AttackCooldown.
	We need to somehow track that the last state we were in was Attack in order to combo.
	When we combo, we need a combo counter that increments on hits, and goes to 0 when attackStart is done.
	I need to know what weapon we have, and what animations go with that weapon.
	I need to know what damage each hit does too.
	*/
}