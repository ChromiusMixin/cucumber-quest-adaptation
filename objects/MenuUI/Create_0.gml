/// @description Insert description here
// You can write your code in this editor

Owner = self
Menu = 0
Menu1 = instance_create_depth((view_get_wport(0)*-1),150,-1000,MainMenu)


PartyDisplay = instance_create_layer(view_get_wport(0),(view_get_hport(0)*0.5),"UILayer",CharDisplay)
BB1y = view_get_hport(0)
BB2y = view_get_hport(0)-view_get_hport(0)
bbscale = 0