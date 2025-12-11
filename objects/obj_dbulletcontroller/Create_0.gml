btimer = 198;
timermax = 24;
difficulty = 0.5;
type = 1;
joker = 0;
side = 1;
damage = 100;
grazepoints = 1;
timepoints = 1;
inv = 120;
grazed = 0;
grazetimer = 0;
target = 0;
made = 0;
special = 0;
miny = 150;
maxy = 280;

if (instance_exists(obj_growtangle))
{
    miny = obj_growtangle.y - (obj_growtangle.sprite_height / 2);
    maxy = obj_growtangle.y + (obj_growtangle.sprite_height / 2);
}

ratio = 1;

if (scr_monsterpop() == 2)
    ratio = 1.6;

if (scr_monsterpop() == 3)
    ratio = 2.3;
