/// @description Insert description here
// You can write your code in this editor
event_inherited();
scr_playerParseInput(id);

if(jumpTime > 0){
	setGravity(false);
	--jumpTime;
}else{
	setGravity(true);
}

if(jumpCancelWindow > 0){
	--jumpCancelWindow;
}

scr_playerUpdate();
scr_physics(id);