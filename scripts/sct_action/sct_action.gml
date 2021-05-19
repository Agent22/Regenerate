// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sct_action(enumAction,refAnimator) constructor{
	actionEnum = enumAction
	componentArray = parseActionEnum(actionEnum);
	componentIndex = 0;
	animator = refAnimator;
	
	function clean(){
		componentIndex = 0;
		for(var i = 0; i < array_length(componentArray); i++){
			componentArray[i].clean();
		}
	}
	
	function getActionEnum(){
		return actionEnum;
	}
	
	function getCurrentACMethodEnum(){
		return componentArray[componentIndex].getACMethodEnum();
	}
	
	function update(){
		var result = componentArray[componentIndex].update();
		if(result == ACComplete.iterate){
			componentArray[componentIndex].clean();
			componentIndex++;
			if(componentIndex == array_length(componentArray)){
				clean();
				return true;
			}
		}else if(result == ACComplete.escape){
			clean();
			return true;
		}
		return false;
	}
	
	function parseActionEnum(actionEnum){
		switch(actionEnum){
			/*
			default:
			case Action.ExampleAction:
				componentArray = [];
				componentArray[0] = new sct_actionComponent(DaTell);
				componentArray[1] = new sct_actionComponent(DaBigJump);
				componentArray[2] = new sct_actionComponent(DaSLAM);
				componentArray[3] = new sct_actionComponent(DaCooldown);
				return new action(componentArray,animator);
			break;*/
		}
		//The switch should have a default, this should never be called.
		return noone;
	}
}