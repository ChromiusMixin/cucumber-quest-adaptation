global.interact = 3;
instance_create(0, 0, obj_fadeout);

if (touched == 0)
{
    alarm[2] = 16;
    touched = 1;
}
