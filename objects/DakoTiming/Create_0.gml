/// @description Insert description here
// You can write your code in this editor
image_yscale = 0


Parent = 0
Count = 0
Timer = 0

function Charge()
	{
		instance_create_layer(x+Count*40,y-5,"UI2",DakoGem)
		Count += 1
	}

StateOpen = function()
{
	image_yscale = lerp(image_yscale,1,0.2)
}

StateClose = function()
{
	Confirm = 1
	image_yscale = lerp(image_yscale,0,0.5)
	if image_yscale <= 0.2 
		{
			instance_destroy(DakoGem)
			instance_destroy()
		}
}

State = StateClose //Start Closed

Confirm = 0
