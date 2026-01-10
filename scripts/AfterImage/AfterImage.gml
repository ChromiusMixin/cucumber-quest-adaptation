// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AfterImage(x,y,xvel,yvel,Decay = 0.02){
	var AI = instance_create_depth(x,y,depth+1,AfterImageGeneric)
	AI.sprite_index = sprite_index
	AI.image_xscale = image_xscale
	AI.image_yscale = image_yscale
	AI.hspd = xvel
	AI.vspd = yvel
	AI.dectime = Decay

}