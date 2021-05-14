// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enums(){
	enum State{
		Idle,
		AttackStartup,
		SuperCharging,
		AttackActive,
		AttackEndLag,
		Cannonball,
		Dash,
		AttackDash,
		Parry,
		ParryFail,
		Hurt,
		SuperMovePrompt,
		SuperMove,
		Focusing
	}
	
	enum AttackStrength{
		Weak = .25,
		Normal = 1,
		Strong = 2,
		Super = 4,
	}
	
	enum HyperarmorStrength{
		None,
		Weak,
		Medium,
		Strong
	}
	
	enum WeaponType{
		Light,
		Medium,
		Heavy
	}
	
	enum Attack{
		playerMedium1,
		playerMedium2,
		playerMedium3,
		playerMedium4,
		superMove
	}
	
	enum CharacterType{
		player,
		striker
	}
	
	enum Action{
		idle,
		strikerLeap
	}
	
	enum ActionComponent{
		approach,
		attack
	}
}