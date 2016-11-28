/// @description Player control
// You can write your code in this editor
leftKey = keyboard_check(vk_left);
rightKey = keyboard_check(vk_right);
upKey = keyboard_check(vk_up);

if(place_meeting(x,y+1,obj_solid)){
	onGround = true;
} else {
	onGround = false;
}

if(rightKey){
	physics_apply_force(x,y,walkingPower,0);
}