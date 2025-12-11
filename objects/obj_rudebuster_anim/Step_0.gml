image_index = t / 4;

if (t >= 56)
{
    if (instance_exists(obj_herosusie))
    {
        with (obj_herosusie)
            visible = 1;
    }
    
    instance_destroy();
}

if (instance_exists(target))
{
    if (t == 20)
    {
        snd_play(snd_rudebuster_swing);
        blast = instance_create(x + 40, y + 30, obj_rudebuster_bolt);
        blast.caster = caster;
        blast.target = target;
        blast.damage = damage;
        blast.star = star;
        
        if (red == 1)
            blast.red = 1;
    }
}

t += 1;
