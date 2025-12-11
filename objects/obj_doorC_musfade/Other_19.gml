global.interact = 3;
instance_create(0, 0, obj_fadeout);
mus_volume(global.currentsong[1], 0, 28);

if (touched == 0)
{
    alarm[3] = 28;
    alarm[2] = 29;
    touched = 1;
}
