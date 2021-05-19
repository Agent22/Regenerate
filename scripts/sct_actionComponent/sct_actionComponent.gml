// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sct_actionComponent(ACMethodEnum, parentAnimator) constructor{
	enumACMethod = ACMethodEnum;
	animator = parentAnimator;
	switch(enumACMethod){
		default:
		//example method assignment.
		actionComponentMethod = scr_playerDash;
		break;
	}
	timeActive = 0;
	currentAnimationIndex = animator.getImageIndex();
	lastAnimationIndex = 0;
	iterateOnTime = false;
	iterateOnAnimation = false;
	
	clean();
	
	function clean(){
		timeActive = 0;
		lastAnimationIndex = 0;
	}
	
	function getACMethodEnum(){
		return enumACMethod;
	}
	
	function update(){
		timeActive++;
		currentAnimationIndex = animator.getImageIndex();
		//iterateOnTime is handled in the method.
		var result = script_execute(actionComponentMethod);
		if(result == ACComplete.Iterate || result == ACComplete.Escape){
			return result;	
		}
		if(iterateOnAnimation){
			if(currentAnimationIndex == 0 && lastAnimationIndex == sprite_get_number(animator.getSpriteIndex())-1){
				return ACComplete.Iterate;
			}
			lastAnimationIndex = currentAnimationIndex;
		}
		return ACComplete.None;
	}
}