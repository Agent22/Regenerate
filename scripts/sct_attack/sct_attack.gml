// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sct_attack(enumAttack) constructor{
	switch(enumAttack){
		case Attack.playerMedium1:
			startupFrames = 2;
			cooldownFrames = 2;
			animation = spr_player_med_1_vis;
			hitbox = spr_player_med_1_hitbox;
			strength = AttackStrength.Normal;
			hyperarmor = HyperarmorStrength.Weak;
		break;
		case Attack.playerMedium2:
			startupFrames = 1;
			cooldownFrames = 2;
			animation = spr_player_med_2_vis;
			hitbox = spr_player_med_2_hitbox;
			strength = AttackStrength.Weak;
			hyperarmor = HyperarmorStrength.None;
		break;
		case Attack.playerMedium3:
			startupFrames = 2;
			cooldownFrames = 2;
			animation = spr_player_med_3_vis;
			hitbox = spr_player_med_3_hitbox;
			strength = AttackStrength.Normal;
			hyperarmor = HyperarmorStrength.Weak;
		break;
		case Attack.playerMedium4:
			startupFrames = 5;
			cooldownFrames = 3;
			animation = spr_player_med_4_vis;
			hitbox = spr_player_med_4_hitbox;
			strength = AttackStrength.Strong;
			hyperarmor = HyperarmorStrength.Medium;
		break;
		case Attack.superMove:
			startupFrames = 5;
			cooldownFrames = 4;
			animation = spr_player_superMove_vis;
			hitbox = spr_player_superMove_hitbox;
			strength = AttackStrength.Super;
			hyperarmor = HyperarmorStrength.Strong;
		break;
		default:
			startupFrames = 2;
			cooldownFrames = 2;
			animation = spr_player_med_2_vis;
			hitbox = spr_player_med_2_hitbox;
			strength = AttackStrength.Weak;
			hyperarmor = HyperarmorStrength.None;
		break;
	}
}