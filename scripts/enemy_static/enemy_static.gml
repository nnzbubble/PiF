var distance = point_distance(x,y,player.x,player.y);

if(distance<= aggroRange){
	state = enemy_follow;
}