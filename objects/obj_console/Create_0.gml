/// @description Insert description here
// You can write your code in this editor
<<<<<<< Updated upstream

=======
scr_enums();
>>>>>>> Stashed changes
scr_initializeGameEnvironment();

//these need to be defined in the console, and not within a script for them to be bound to the console.
function GetInputMoveLeft(){
	return keyboard_check_direct(ord("A"));
}

function GetInputMoveRight(){
	return keyboard_check_direct(ord("D"));
}