
player_speed = 300/room_speed

player_frame = 0

player_dx = 0
player_dy = 0
dx = player_dx
dy = player_dy

hp = 100;

recoilSpeed=60;
playerRecoil=-1;
playerStop=-1;
bool_hit = 0;

//To be used by collision events with enemies to get their x/y's so that recoil is in right dir
collision_x = 0;
collision_y = 0;

global.coinCount = 0;