// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enums(){
	enum State{
		Idle,
		Acting,
		Stunned,
		SuperMovePrompt,
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
	
	enum Action{
		Idle,
		StrikerLeap
	}
	
	enum ActionComponent{
		Player_JumpRise,
		Player_CannonballRise,
		Player_CannonballFall,
		Player_MediumAttack1,
		Player_MediumAttack2,
		Player_MediumAttack3,
		Player_MediumAttack4,
		Player_SuperAttack,
		Striker_Leap,
		Striker_Attack,
		Striker_LeapBack
	}
}