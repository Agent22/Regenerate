/// @description Insert description here
// You can write your code in this editor
event_inherited();
stateComponent = new sct_stateComponent();
grounded = false;
//jump number variable here

function getState(){
	return stateComponent.getState();
}

function setState(newState){
	return stateComponent.setState(newState);
}

function getGrounded(){
	return grounded;
}

function setGrounded(val){
	grounded = val;
}