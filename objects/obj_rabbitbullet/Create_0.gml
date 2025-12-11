difficulty = 0.5;
times = 0;
activetimer = 0;
grazed = 0;
grazepoints = 5;
timepoints = 5;
target = 0;
dont = 1;
inv = 240;
damage = 124;
active = 0;
image_alpha = 0;
image_speed = 0;

if (!instance_exists(obj_heart))
    instance_destroy();

jumpsiner = random(100);
hspeed = -1.5 - random(0.5);
jumpspeed = 4 + random(2);
jumpheight = 50 + random(10);
image_xscale = 2;
image_yscale = 2;
