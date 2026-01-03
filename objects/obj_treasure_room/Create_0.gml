myinteract = 0;
talked = 0;
image_speed = 0;
itemflag = 104;
itemtype = "armor";
t_itemid = 4;
close = 0;
extratext = 0;

if (room == room_field_maze)
    extratext = 1;

if (room == room_field_secret1)
{
    itemflag = 117;
    itemtype = "key";
    t_itemid = 7;
    extratext = 0;
}

if (room == room_forest_dancers1)
{
    itemflag = 107;
    itemtype = "item";
    t_itemid = 2;
    extratext = 1;
    
    if (x >= (room_width / 2))
    {
        itemflag = 116;
        itemtype = "key";
        t_itemid = 6;
        extratext = 0;
    }
}

if (room == room_forest_area2A)
{
    itemflag = 108;
    itemtype = "weapon";
    t_itemid = 9;
    extratext = 1;
}

if (room == room_forest_area3A)
{
    itemflag = 109;
    itemtype = "armor";
    t_itemid = 2;
    extratext = 1;
}

if (room == room_forest_area4)
{
    if (y <= (room_height / 2))
    {
        itemflag = 110;
        itemtype = "gold";
        t_itemid = 40;
        extratext = 1;
    }
    else
    {
        itemflag = 111;
        itemtype = "item";
        t_itemid = 2;
        extratext = 1;
    }
}

if (room == room_forest_secret1)
{
    itemflag = 116;
    itemtype = "key";
    t_itemid = 6;
    extratext = 0;
}

if (global.darkzone == 1)
{
    image_xscale = 2;
    image_yscale = 2;
}

if (global.flag[itemflag] == 1)
    image_index = 1;

scr_depth();
