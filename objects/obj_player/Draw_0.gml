/// @description Insert description here
// You can write your code in this editor
draw_self();
var attackFrame = attackTimeCount div attackFPS;
if(getState() == State.AttackStartup || getState() == State.AttackActive || getState() == State.AttackEndLag){
	if(attackFrame < weapon.combo[comboCounter].startupFrames){
		draw_text(x,y-120,"STARTUP");	
	}else if(attackFrame >= sprite_get_number(sprite_index)-weapon.combo[comboCounter].cooldownFrames){
		draw_text(x,y-120,"END LAG");
	}else{
		draw_text(x,y-120,"ACTIVE");	
	}
}