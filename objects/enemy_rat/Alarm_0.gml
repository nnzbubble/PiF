/// @description random movement
var ang = 0;
//only happens if not chasing
if(state == enemy_static){

ang = irandom_range(0,359);

if(ang > 89){ direction = 0; }
if(ang < 90 && ang > 179){ direction = 90; }
if(ang > 180 && ang < 269){ direction = 180; }
if(ang > 269){ direction = 270; }

speed = 1;

alarm[0] = 60;

}
