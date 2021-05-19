// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sct_action(arrayActionComponents,refAnimator) constructor{
	componentArray = arrayActionComponents;
	componentIndex = 0;
	animator = refAnimator;
	
	function clean(){
		componentIndex = 0;
		for(var i = 0; i < array_length(componentArray); i++){
			componentArray[i].clean();
		}
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
}