/// @description Runs every frame
//control
var up_key = keyboard_check(vk_up)
var down_key = keyboard_check(vk_down)
var left_key = keyboard_check(vk_left)
var right_key = keyboard_check(vk_right)

//movement
if(keyboard_check(vk_shift)or keyboard_check(ord("X"))){
	move_spd=run_spd	
} else {
	move_spd=walk_spd	
}

xspeed = (right_key - left_key) * move_spd
yspeed = (down_key - up_key) * move_spd

x += xspeed
y += yspeed

//animate
if (xspeed > 0){
 sprite_index =	Spr_KrisWr
} else if (xspeed < 0){
sprite_index =	Spr_KrisWl	
}else if (yspeed < 0){
sprite_index =	Spr_KrisWu	
}else if (yspeed > 0){
sprite_index =	Spr_KrisWd	
}

if(xspeed != 0 or yspeed != 0){
	image_speed = 1
}else{
image_speed = 0
image_index = 0
}