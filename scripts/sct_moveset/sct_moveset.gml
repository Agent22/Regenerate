// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//arrayActionEnums is optional
function sct_moveset(animator,arrayActionEnums) constructor{
	actions = [];
	actionIndex = 0;
	animator = argument[0];
	if(argument_count == 2){
		var array = argument[1];
		for(var i = 0; i < array_length(array); i++){
			actions[array_length(actions)] = parseActionEnum(array[i]);
		}
	}
	
	
	function setAction(index){
		actionIndex = index;
	}
	function cleanCurrentAction(){
		actions[actionIndex].clean();
	}
	function getCurrentActionEnum(){
		//return 
	}
	function getActions(){
		return actions;
	}
	function addAction(actionEnum){
		actions[array_length(actions)] = parseActionEnum(actionEnum);
	}
	function update(){
		var result = actions[actionIndex].update();
		if(result){
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