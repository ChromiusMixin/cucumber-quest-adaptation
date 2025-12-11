t = 0;
image_speed = 0;
target = 9897887;
image_xscale = 2;
image_yscale = 2;
damage = 1;
caster = 0;
star = 0;

if (instance_exists(obj_herosusie))
{
    depth = obj_herosusie.depth;
    
    with (obj_herosusie)
        visible = 0;
}
else
{
    image_xscale = -2;
    depth = obj_susieenemy.depth;
}

red = 0;
