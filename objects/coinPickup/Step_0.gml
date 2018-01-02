/// @description Insert description here
// You can write your code in this editor
dist = sqrt(power(targetObj.x - x,2) + power(targetObj.y - y, 2))
if(dist < 100)	//coins come close to you
{
	if (targetObj.x - x > 0)
		x += velspeed;
	else
		x -= velspeed;

	if (targetObj.y - y > 0)
		y += velspeed;
	else
		y -= velspeed;

}