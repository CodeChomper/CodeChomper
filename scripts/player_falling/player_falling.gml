if(invincible){
	sprite_index = spr_player_jump_invincible;
} else {
	sprite_index = spr_player_jump;
}

if(abs(phy_speed_x) < maxXSpeed){
	if(leftKey){
		physics_apply_force(x,y,-P_GLIDE_POWER,0);
	}
	if(rightKey){
		physics_apply_force(x,y,P_GLIDE_POWER,0);
	}
}

if(jumpCnt < 2 && upKey && canJump){
	canJump = false;
	//Timer for canJump reset
	alarm_set(1,5);
	jumpCnt++;
	physics_apply_impulse(x,y,0,P_JUMP_FORCE);
	return;
}

if(is_on_ground()){
	state = STATE_P_STANDING;
	jumpCnt = 0;
}