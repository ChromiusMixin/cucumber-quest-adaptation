dtimer += 1;

if (type == 0)
{
    if (dtimer == 30 || dtimer == 38 || dtimer == 46)
    {
        move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 0.05);
        bul = instance_create(x, y, obj_regularbullet);
        
        if (instance_exists(bul))
        {
            bul.sprite_index = spr_clubsball_b;
            bul.direction = direction;
            bul.speed = 2;
            bul.image_angle = direction;
            bul.damage = damage;
            bul.target = target;
            bul.grazepoints = 2;
            bul.timepoints = 1;
        }
        
        bul = instance_create(x, y, obj_regularbullet);
        
        if (instance_exists(bul))
        {
            bul.sprite_index = spr_clubsball_c;
            bul.direction = direction - 17;
            bul.speed = 2;
            bul.image_angle = direction;
            bul.damage = damage;
            bul.target = target;
            bul.grazepoints = 2;
            bul.timepoints = 1;
        }
        
        bul = instance_create(x, y, obj_regularbullet);
        
        if (instance_exists(bul))
        {
            bul.sprite_index = spr_clubsball_a;
            bul.direction = direction + 17;
            bul.speed = 2;
            bul.image_angle = direction;
            bul.damage = damage;
            bul.target = target;
            bul.grazepoints = 2;
            bul.timepoints = 1;
        }
    }
    
    if (dtimer == 50)
    {
        a = instance_create(x, y, obj_afterimage);
        a.sprite_index = sprite_index;
        a.image_angle = image_angle;
        instance_destroy();
    }
}

if (type == 2)
{
    if (dtimer == 40 || dtimer == 44 || dtimer == 48)
    {
        move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 0.05);
        bul = instance_create(x, y, obj_regularbullet);
        
        if (instance_exists(bul))
        {
            bul.sprite_index = spr_clubsball_b;
            bul.direction = (direction - 2) + initangle;
            bul.speed = 1;
            
            if (type == 2)
                bul.speed = 2.5;
            
            bul.image_angle = direction;
            scr_bullet_inherit(bul);
        }
        
        bul = instance_create(x, y, obj_regularbullet);
        
        if (instance_exists(bul))
        {
            bul.sprite_index = spr_clubsball_c;
            bul.direction = (direction - 19 - 2) + initangle;
            bul.speed = 1;
            
            if (type == 2)
                bul.speed = 2.5;
            
            bul.image_angle = direction;
            scr_bullet_inherit(bul);
        }
        
        bul = instance_create(x, y, obj_regularbullet);
        
        if (instance_exists(bul))
        {
            bul.sprite_index = spr_clubsball_a;
            bul.direction = ((direction + 19) - 2) + initangle;
            bul.speed = 1;
            
            if (type == 2)
                bul.speed = 2.5;
            
            bul.image_angle = direction;
            scr_bullet_inherit(bul);
        }
        
        initangle += 1;
    }
    
    if (dtimer == 52)
    {
        a = instance_create(x, y, obj_afterimage);
        a.sprite_index = sprite_index;
        a.image_angle = image_angle;
        instance_destroy();
    }
}
