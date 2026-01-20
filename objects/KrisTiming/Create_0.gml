/// @description Insert description here
// You can write your code in this editor
image_yscale = 0
y += 50
Timer = instance_create_layer(x+260,y,"UI2",KrisTimingBar)


Dist = 0

StateOpen = function()
{
	image_yscale = lerp(image_yscale,1,0.2)
}

StateClose = function()
{
	Confirm = 1
	image_yscale = lerp(image_yscale,0,0.5)
	if image_yscale == 0 
		{
			instance_destroy(KrisTimingBar)
			instance_destroy(KrisTimingAfterimage)
			instance_destroy()
		}
}

State = StateClose //Start Closed

Confirm = 0
