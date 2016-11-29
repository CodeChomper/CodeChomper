if(invincible){
	sprite_index = spr_player_jump_invincible;
} else {
	sprite_index = spr_player_jump;
}
var leftWall = false;
var rightWall = false;
if(abs(phy_speed_x) < maxXSpeed){

	//Check if wall to the left
	if(place_meeting(x-4,y,obj_wall_jump)) leftWall = true;
	//Check if wall to right
	if(place_meeting(x+4,y,obj_wall_jump)) rightWall = true;
	
	//Handle wall jump leftWall
	if(leftWall && keyboard_check_released(vk_up)){
		physics_apply_impulse(x,y,P_GLIDE_POWER, P_JUMP_FORCE);
		jumpCnt = 100;
	}
	
	//Handle wall jump rightWall
	if(rightWall && keyboard_check_released(vk_up)){
		physics_apply_impulse(x,y,-P_GLIDE_POWER, P_JUMP_FORCE);
		jumpCnt = 100;
	}
		
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