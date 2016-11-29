/// @description check if object is sitting on the ground

//if(place_meeting(x,y+2,obj_solid)){
if(!position_empty(x,y+17) || !position_empty(x-8,y+17) || !position_empty(x+10,y+17)){
	return true;
} else {
	return false;
}