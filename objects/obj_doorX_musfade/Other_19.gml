global.interact = 3;
mus_volume(global.currentsong[1], 0, 28);
instance_create(0, 0, obj_fadeout);

if (touched == 0)
{
    alarm[2] = 29;
    alarm[3] = 28;
    touched = 1;
}
