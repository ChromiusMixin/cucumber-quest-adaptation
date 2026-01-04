myinteract = 0;
talked = 0;
tempvar = 0;
image_speed = 0;
depthcancel = 0;
normalanim = 1;
remanimspeed = 0;
image_xscale = 2;
image_yscale = 2;

if (room == room_castle_tutorial)
    sprite_index = spr_dummynpc;
    
if (room == room_field2A || room == room_field_puzzle1 || room == room_field4)
    sprite_index = spr_candytree;
    
if (room == room_field_topchef)
{
    sprite_index = spr_topchef;
        
    if (y <= 120)
    {
        sprite_index = spr_smoldercake;
        alarm[11] = 1;
    }
}
    
if (room == room_field_puzzletutorial)
{
    sprite_index = spr_npc_puzzlepiece;
        
    if (global.flag[251] == 1)
        instance_destroy();
}
    
if (room == room_field_maze)
{
    if (x < 1600)
        sprite_index = spr_jigsawry_idle;
        
    if (x > 1600)
        sprite_index = spr_lancer_dt;
}
    
if (room == room_field_boxpuzzle)
    sprite_index = spr_npc_block_broken;
    
if (room == room_field_checkers7)
{
    if (x <= (room_width / 2))
    {
        sprite_index = spr_npc_mrelegance;
            
        if (global.plot >= 60)
            instance_destroy();
    }
    else
    {
        sprite_index = spr_npc_mrsociety;
    }
}
    
if (room == room_forest_savepoint1)
{
    if (x <= (room_width / 2))
    {
        sprite_index = spr_npc_puzzlepiece;
            
        if (global.flag[251] == 0)
            instance_destroy();
    }
    else
    {
        sprite_index = spr_npc_mrelegance;
    }
}
    
if (room == room_forest_area1)
    sprite_index = spr_diamond_overworld;
    
if (room == room_forest_area2A)
{
    if (x <= (room_width / 2))
        sprite_index = spr_jackperson;
        
    if (x >= (room_width / 2))
        sprite_index = spr_ballperson;
}
    
if (room == room_forest_area3A)
{
    if (x <= (room_width / 2))
        sprite_index = spr_blockler_b;
        
    if (x >= (room_width / 2))
        sprite_index = spr_blockler_o;
}
    
if (room == room_forest_savepoint2)
{
    sprite_index = spr_bakesale_rudinn;
        
    if (x >= 800 && x <= 880)
        sprite_index = spr_bakesale_hathy;
        
    if (x >= 980)
        sprite_index = spr_bakesale_lancer;
}
    
if (room == room_forest_area4)
    sprite_index = spr_npc_coody;
    
if (room == room_forest_starwalker)
    sprite_index = spr_npc_originalstarwalker;
    
if (room == room_forest_savepoint_relax)
{
    if (x <= 200)
        sprite_index = spr_diamond_overworld;
        
    if (x > 260)
    {
        if (global.plot >= 90)
            instance_destroy();
            
        if (y >= 240)
            sprite_index = spr_lancer_dark_relax;
        else
            sprite_index = spr_susie_dark_relax;
    }
}
    
if (room == room_forest_fightsusie)
{
    sprite_index = spr_lancer_dt;
        
if (global.plot >= 150)
        instance_destroy();
}

if (depthcancel == 0)
    scr_depth();
