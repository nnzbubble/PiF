/// @description Update Camera
// You can write your code in this editor

//Update the 'To's if destination exists
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update the object position
x += (xTo - x) / 12;
y += (yTo - y) / 12;

x = clamp(x, widthHalf, room_width - widthHalf);
y = clamp(y, heightHalf, room_height - heightHalf);

//Update the viewport
camera_set_view_pos(camera,x-widthHalf,y-heightHalf);



//temporary camera stuff
if(keyboard_check(ord("R")) == true)
room_goto(1);

if(keyboard_check(ord("T")) == true)
window_set_fullscreen(true);
