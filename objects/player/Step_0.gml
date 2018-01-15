dx = player_dx
dy = player_dy
mouse_direction = point_direction(x,y,mouse_x,mouse_y)

key_up = keyboard_check(ord("W"))
key_left = keyboard_check(ord("A"))
key_down = keyboard_check(ord("S"))
key_right = keyboard_check(ord("D"))

//horizontal movement
if key_left && !key_right
	player_dx = -player_speed
else if !key_left && key_right
	player_dx = player_speed
else if !key_left && !key_right
	player_dx = 0

//vertical movement
if key_up && !key_down
	player_dy = -player_speed
else if !key_up && key_down
	player_dy = player_speed
else if !key_up && !key_down 
	player_dy = 0
	

//inventory controls
if keyboard_check_pressed(vk_tab)
{
	item_held_index++;
	if(item_held_index > 5)	//todo: change 5 to maxItem
		item_held_index = 0;

	destroy_held_obj();
	
	if(global.inventory[item_held_index] =! -1)
	{
		switch(item_held_index)
		{
			case 1:	
				//instance_create_depth(x, y, 1,sword_hold);
				break;
			case 2:	
				//instance_create_depth(x, y, 1,sword_hold);
				break;
			case 3:	
				instance_create_depth(x, y, 1,sword_hold);
				break;
			case 4:	
				//instance_create_depth(x, y, 1,sword_hold);
				break;
			case 5:	
				//instance_create_depth(x, y, 1,sword_hold);
				break;
				
			default:
				break;
		}
	
	}
}

	
//collision
if(place_meeting(x+player_dx,y,wall1) 
	|| place_meeting(x+player_dx,y,removable_wall_1)
	||  place_meeting(x+player_dx,y,removable_wall_2)){

	while(!place_meeting(x+sign(player_dx),y,wall1)
		&& !place_meeting(x+sign(player_dx),y,removable_wall_1)
		&& !place_meeting(x+sign(player_dx),y,removable_wall_2)){
		x += sign(player_dx);
	}
	player_dx = 0;

}

x += player_dx;

if(place_meeting(x,y+player_dy,wall1)
	|| place_meeting(x,y+player_dy,removable_wall_1)
	||  place_meeting(x,y+player_dy,removable_wall_2)){

  while(!place_meeting(x,y+sign(player_dy),wall1)
	&& !place_meeting(x,y+sign(player_dy),removable_wall_1)
	&& !place_meeting(x,y+sign(player_dy),removable_wall_2)){
    y += sign(player_dy);
  }
	
  player_dy = 0;
}

y += player_dy

//animation
if (player_dx != 0 || player_dy != 0)
	player_frame += 15/room_speed //15 is whatever the optimum frame speed we want for the character animation to be
else
	player_frame = 0


//Recoil
if(playerRecoil!=-1){
    playerRecoil-=1;
   direction = point_direction(x,y,collision_x,collision_y)-180; //opposite direction that the player is currently facing
   speed= recoilSpeed;
   playerStop=1;
}

if(playerRecoil==-1){
	direction = point_direction(x,y,collision_x,collision_y);
}

if(playerRecoil=-1 && playerStop=1){
    speed=0;
    playerStop=-1;
}


//death
if hp <= 0{
	game_end();
}


