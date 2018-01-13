/// @description if (showInv)
// You can write your code in this editor
cameraOb = cameraOBJ;

if(showInv)
{
	var x1, x2, y1, y2;
	x1 = cameraOb.x - (1280/2) + 40;
	x2 = x1 + (global.maxItems * 64);
	y1 = cameraOb.y - (720/2) + 20;
	y2 = y1 + 64;
	
	draw_set_color(c_gray);
	draw_set_alpha(0.8);
	draw_rectangle(x1,y1,x2,y2,0);
	//reset back to OG
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	for(i = 0; i < maxItems; i += 1)
	{
		draw_sprite(spr_border,0,x1+12+(i*64),y1+12);
		if (global.inventory[i] != -1)
		{
			draw_sprite(spr_items, global.inventory[i],x1+12+(i*64),y1+12);
		}
	}





}