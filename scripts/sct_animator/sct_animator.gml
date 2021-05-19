// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sct_animator() constructor{
	dir = -1;
	frameCount = 0;
	
	function update(){
		++frameCount;
		if(frameCount >= global.frameDivisor){
			frameCount = 0;
			++image_index;
		}
	}
	
	function setAnimation(spr){
		frameCount = 0;
		sprite_index = spr;
	}
	
	function setDirection(facingRight){
		if(facingRight){
			dir = 1;
		}else{
			dir = -1;
		}
	}
	
	function getSpriteIndex(){
		return sprite_index;
	}
	
	function getImageIndex(){
		return image_index;
	}
	
	function getFrame(){
		return frameCount;
	}
}