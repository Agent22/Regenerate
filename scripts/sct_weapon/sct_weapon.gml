// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sct_weapon(enumWeaponType) constructor{
	switch(enumWeaponType){
		case WeaponType.Light:
			
		break;
		case WeaponType.Medium:
			combo[0] = new sct_attack(Attack.playerMedium1);
			combo[1] = new sct_attack(Attack.playerMedium2);
			combo[2] = new sct_attack(Attack.playerMedium3);
			combo[3] = new sct_attack(Attack.playerMedium4);
		break;
		case WeaponType.Heavy:
			
		break;
		default:
			
		break;
	}
}