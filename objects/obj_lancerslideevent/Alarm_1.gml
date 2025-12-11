dust = instance_create(obj_mainchara.x + 20, obj_mainchara.y + 30, obj_slidedust);

with (dust)
{
    vspeed = -3;
    hspeed = -0.5 + random(1);
}

alarm[1] = 8;
