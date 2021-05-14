/// @description Insert description here
// You can write your code in this editor
event_inherited();
stateComponent = new sct_stateComponent();
state = State.Idle;

jumpVelocity = -10;
moveVelocity = 5;

hitPoints = 100;
attackPower = 30;
//jump number variable here

function getState(){
	return stateComponent.getState();
}

function setState(newState){
	return stateComponent.setState(newState);
}