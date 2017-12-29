
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
	
//collision
//if(place_meeting(x+player_dx,y,wall1)){

//	while(!place_meeting(x+sign(player_dx),y,wall1)){
//		x += sign(player_dx);
//	}
//	player_dx = 0;

//}

x += player_dx;

//if(place_meeting(x,y+player_dy,wall1)){

//	while(!place_meeting(x,y+sign(player_dy),wall1)){
//		y += sign(player_dy);
//	}
	
//	player_dy = 0;
//}

y += player_dy

//animation
if (player_dx != 0 || player_dy != 0)
	player_frame += 15/room_speed //15 is whatever the optimum frame speed we want for the character animation to be
else
	player_frame = 0


//hit detection and recoiling
if (bool_hit==1){  
playerRecoil=1; // activates/how long the recoil effect lasts for
}

while(playerRecoil!=-1){
    playerRecoil-=1;
   direction = image_angle-180; //opposite direction that the player is currently facing
   speed= recoilSpeed;
}

//death
if hp <= 0{
	game_end();
}
