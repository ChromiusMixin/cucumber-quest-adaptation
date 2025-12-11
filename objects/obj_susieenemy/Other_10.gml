with (obj_rudebuster_bolt)
{
    target = global.charinstance[obj_susieenemy.target];
    targetx = mean(global.charinstance[obj_susieenemy.target].bbox_left, global.charinstance[obj_susieenemy.target].bbox_right);
    targety = mean(global.charinstance[obj_susieenemy.target].bbox_top, global.charinstance[obj_susieenemy.target].bbox_bottom);
}
