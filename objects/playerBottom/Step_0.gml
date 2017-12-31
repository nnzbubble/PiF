/// @description Insert description here
// You can write your code in this editor

x = myTop.x
y = myTop.y


key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down = keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))



if (myTop.dx == 0 && myTop.dy > 0)		//up
	legs_direction = 0;
else if (myTop.dx == 0 && myTop.dy < 0) //down
	legs_direction = 180;
else if (myTop.dx > 0 && myTop.dy == 0) //right
	legs_direction = 270;
else if (myTop.dx < 0 && myTop.dy == 0) //left
	legs_direction = 90;

else if (myTop.dx > 0 && myTop.dy > 0)	//up-right
	legs_direction = 45
else if (myTop.dx < 0 && myTop.dy > 0)  //up-left
	legs_direction = 315;
else if (myTop.dx < 0 && myTop.dy < 0)  //down-left
	legs_direction = 225;
else if (myTop.dx > 0 && myTop.dy < 0) //down-right
	legs_direction = 135;





if(!key_up && !key_left && !key_down && !key_right)
	moving = false
else
	moving = true;

if(!moving)
{
	legs_frame = 5;
}
else
{
	if(updown) //if up
	{
		if(legs_frame > 0)
			legs_frame --;
		else
			updown = false;
	}
	if(!updown) // if down
	{
		if(legs_frame < 11)
			legs_frame ++;
		else
			updown = true;
	}		
}
