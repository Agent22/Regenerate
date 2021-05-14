/// @description Insert description here
// You can write your code in this editor
<<<<<<< Updated upstream
event_inherited();
scr_physics(id);
scr_playerParseInput();

if(jumpTime >= 0){
	setGravity(false);
	jumpTime -= delta_time / 1000000;
}else{
	setGravity(true);
}}
=======
scr_playerParseInput();
scr_playerUpdate();
scr_physics(id);

>>>>>>> Stashed changes
