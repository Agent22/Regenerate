/// @description Insert description here
// You can write your code in this editor
event_inherited();

cannonballAvailable = true;
jumpTime = 0;
jumpCancelWindow = 0;
cannonballLockIn = 0;

weapon = new sct_weapon(WeaponType.Medium);
comboCounter = 0;
attackTimeCount = 0;
attackFPS = 12;


dashAvailable = true;
dashSpeed = 12;
dashTime = 10;
dashTimeCount = 0;

//overwritten setGrounded
function setGrounded(val){
	grounded = val;
	if(grounded && getState() != State.Dash && getState() != State.AttackDash){
		dashAvailable = true;
	}
}