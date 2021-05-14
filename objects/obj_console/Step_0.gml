/// @description Insert description here
// You can write your code in this editor// You can write your code in this editor

//debug commands
/*
show_debug_message("======================");
show_debug_message("DEBUG COMMANDS ENABLED");
show_debug_message("======================");*/
if(keyboard_check_pressed(vk_escape)){
	game_end();	
}
if(keyboard_check_pressed(vk_tab)){
	room_restart();	
}