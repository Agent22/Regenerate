/// @description Insert description here
// You can write your code in this editor
event_inherited();

cannonballAvailable = true;
jumpTime = 0;
jumpCancelWindow = 0;
cannonballLockIn = 0;

dashAvailable = true;
dashSpeed = 12;
dashTime = 10;
dashTimeCount = 0;

cannonballUnlocked = true;
omniDashUnlocked = true;
attackDashUnlocked = true;
superMoveUnlocked = true;
superMove2Unlocked = true;


weapon = WeaponType.Medium;
animator = new sct_animator();
moveset = playerCreateMoveset(
animator,
weapon,
cannonballUnlocked,
omniDashUnlocked,
attackDashUnlocked,
superMoveUnlocked,
superMove2Unlocked);

//overwritten setGrounded
function setGrounded(val){
	grounded = val;
	if(true){
		dashAvailable = true;
	}
}

//overwritten setState
function setState(newState){
	if(newState == State.Idle){
		setGravity(1);
	}
	return stateComponent.setState(newState);
}

function performAction(){
	if(stateComponent.getState() == State.Acting){
		var result = moveset.update();
		if(result){
			stateComponent.setState(State.Idle);
		}
		//check if we can cancel the current actionComponent with another action
	}
	//idle check?
}

function playerCreateMoveset(animator,weapon,cannonball,omniDash,attackDash,superMove,superMove2){
	var ms = new sct_moveset(animator);
	switch(weapon){
		case WeaponType.Light:
			ms.addAction(Action.PlayerLightAttack);
		break;
		case WeaponType.Medium:
			ms.addAction(Action.PlayerMediumAttack);
		break;
		case WeaponType.Heavy:
			ms.addAction(Action.PlayerHeavyAttack);
		break;
		default:
		case WeaponType.None:
			//purposefully nothing.
		break;
	}
	if(cannonball) ms.addAction(Action.PlayerCannonball);
	if(omniDash) ms.addAction(Action.PlayerOmniDash);
	if(attackDash) ms.addAction(Action.PlayerAttackDash);
	if(superMove) ms.addAction(Action.PlayerSuperMove);
	if(superMove2) ms.addAction(Action.PlayerSuperMove2);
	return ms;
}