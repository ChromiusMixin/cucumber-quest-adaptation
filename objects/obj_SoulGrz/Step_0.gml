/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

image_blend = c_white
image_alpha = lerp(image_alpha,0,0.2)
image_xscale = scale
image_yscale = scale


if place_meeting(x,y,obj_Bullet)
	{
		tick()
		array_push(collid,other.id)
	}

for (var i = 0; i < array_length(collid); ++i) {
   if !place_meeting(x,y,collid[i])
   {
		var func = function (bulid)
			{

			
				return (bulid.id = collid[i].id)	
			}
			
	   array_delete(collid,array_find_index(collid,func),1)
	}
}