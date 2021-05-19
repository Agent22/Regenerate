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
			actions[array_length(actions)] = new sct_action(array[i],animator);
		}
	}
	
	
	function setAction(index){
		actionIndex = index;
	}
	function cleanCurrentAction(){
		actions[actionIndex].clean();
	}
	function getCurrentActionEnum(){
		return actions[actionIndex].getActionEnum();
	}
	function getCurrentACMethodEnum(){
		return actions[actionIndex].getCurrentACMethodEnum();
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
}