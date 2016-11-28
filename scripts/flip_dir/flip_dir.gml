/// @description only works on physics objects with facingRight boolean variable
/// @param object pass in self or other physics object with facingRight boolean variable 
var tmpObj = argument0;

if( (tmpObj.facingRight && tmpObj.phy_speed_x < 0) || 
	 (!tmpObj.facingRight && tmpObj.phy_speed_x > 0) ){
	tmpObj.image_xscale *= -1;
	tmpObj.facingRight = !tmpObj.facingRight;
}