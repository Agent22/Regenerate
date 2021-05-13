
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerMove(){
	if(global.console.GetInputMoveLeft()){
		setVelocityX(-3);
	}
	if(global.console.GetInputMoveRight()){
		setVelocityX(3);
	}
	if(keyboard_check_pressed(vk_space)){
		setVelocityY(-5);	
	}
}