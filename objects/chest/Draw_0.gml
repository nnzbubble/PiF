/// @description Insert description here
// You can write your code in this editor
//calculate distance

if(!isOpen){
	distance = sqrt( 
		power((target.x - x),2) + 
		power((target.y - y),2)
	);

	if(distance < proximity)
	{
		//draw the button sprite above the chest
		frameNum = 1;
	}
	else
	{
		frameNum = 0;
	}

	
}
else
{
	frameNum = 2;
}

draw_sprite_ext(myTexture,frameNum,x,y,1,1,0,c_white,1)