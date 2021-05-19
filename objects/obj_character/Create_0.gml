/// @description Insert description here
// You can write your code in this editor
event_inherited();
stateComponent = new sct_stateComponent();
state = State.Idle;

jumpVelocity = -10;
moveVelocity = 5;

animator = sct_animator();
moveset = sct_moveset(animator);

hitPoints = 100;
attackPower = 30;
//jump number variable here

function getState(){
	return stateComponent.getState();
}

function setState(newState){
	return stateComponent.setState(newState);
}

function stunned(){
	//animator.setAnimation(myStunnedSprite)
	stateComponent.setState(State.Stunned);
	moveset.cleanCurrentAction();
}

function performAction(){
	if(stateComponent.getState() == State.Acting){
		var result = moveset.update();
		//in player and enemy, overload this by doing something with result.
		//	Also setting the current move based on idle state.
		//if result is true, the action has concluded.
	}
}