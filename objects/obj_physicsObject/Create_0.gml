/// @description Insert description here
// You can write your code in this editor
event_inherited();

velocityX = 0;
velocityY = 0;
grounded = false;
hasGravity = true;

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
	return hasGravity;
}

function setGravity(val){
	hasGravity = val;
}