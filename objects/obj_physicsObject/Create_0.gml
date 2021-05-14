/// @description Insert description here
// You can write your code in this editor
event_inherited();

velocityX = 0;
velocityY = 0;
grounded = false;
gravityMult = 1;
terminalVelocityMult = 1;

function getVelocityX(){
	return velocityX;
}
function getVelocityY(){
	return velocityY;
}
function setVelocityX(newX){
	velocityX = newX;
}
function setVelocityY(newY){
	velocityY = newY;
}

function getGrounded(){
	return grounded;
}

function setGrounded(val){
	grounded = val;
}

function getGravity(){
	return gravityMult;
}

function setGravity(val){
	gravityMult = val;
}

function getTerminal(){
	return terminalVelocityMult;
}

function setTerminal(val){
	terminalVelocityMult = val;
}