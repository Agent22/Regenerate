// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerUpdate(){
	switch(getState()){
		case State.AttackActive:
			//use the weapon.combo[comboCounter].hitbox to check for enemies and HIT 'EM
		case State.AttackStartup:
		case State.AttackEndLag:
			attackTimeCount++;
			var attackFrame = attackTimeCount div attackFPS;
			sprite_index = weapon.combo[comboCounter].animation;
			image_index = attackFrame;
			if(getState() == State.AttackStartup && attackFrame == weapon.combo[comboCounter].startupFrames){
				//We just ended startup frames.
				setState(State.SuperCharging);
			}else if(attackFrame == sprite_get_number(sprite_index)-weapon.combo[comboCounter].cooldownFrames){
				//We just entered cooldown
				setState(State.AttackEndLag);
			}else if(attackFrame == sprite_get_number(sprite_index)){
				//The Attack is over.
				setState(State.Idle);
				sprite_index = spr_testPlayer;
			}
		break;
		case State.SuperCharging:
			sprite_index = spr_player_superMove_vis;
		break;
	}
}