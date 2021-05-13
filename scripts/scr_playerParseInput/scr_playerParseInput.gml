// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerParseInput(){
	// --------------------
	// GATHER GAMEPAD INPUT
	// --------------------
	
	var gpH = gamepad_axis_value(0, gp_axislh);
	var gpV = gamepad_axis_value(0, gp_axislv);
	var gpJump = gamepad_button_check_pressed(0, gp_face1); // A Button
	var gpJumpHeld = gamepad_button_check(0, gp_face1); // A Button Held
	var gpDash = gamepad_button_check_pressed(0, gp_face2); // B Button
	var gpAttack = gamepad_button_check_pressed(0, gp_face3); // X Button
	var gpAttackHeld = gamepad_button_check(0, gp_face3); // X Button Held
	var gpParry = gamepad_button_check_pressed(0, gp_face4); // Y Button
	
	// -------------------
	// GATHER KB + M INPUT
	// -------------------
	
	// variables go here lol
	
	
	// -----------
	// PARSE INPUT
	// -----------
	
	// Horizontal Movement
	if(abs(gpH) > 0.4){
		scr_playerMove(gpH);
	}
	
	// Jumping
	if(gpJump){
		// scr_playerJump();
	}
	
	// Dashing
	if(gpDash){
		// scr_playerDash();
	}
	
	// Parrying
	if(gpParry){
		// scr_playerParry();
	}
	
	// Attacking
	if(gpAttack){
		// scr_playerAttack();
		// This script switches on the player's state.
		// Can trigger first attack, combo attack, or dash attack.
		// If the player is not in a state that permits attacking, this script does nothing.
	}
	
	// Attack Release
	if(!gpAttackHeld){
		// scr_playerAttackConfirm();
		// Also switches on player's state. Unless the player is in the
		// attackCharging state, this script does nothing.
	}
	
	// Jump Held
	if(!gpJumpHeld){
		// player.jumpValue = 0;
	}
}