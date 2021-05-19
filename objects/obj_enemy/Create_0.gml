/// @description Insert description here
// You can write your code in this editor
event_inherited();

function enemyDecideAction(){
	stateComponent.setState(State.acting);
	//does things.
}

function performAction(){
	if(stateComponent.getState() == State.acting){
		var result = moveset.update();
		if(result){
			enemyDecideAction();
		}
	}else if(stateComponent.getState() == State.idle){
		enemyDecideAction();
	}
}