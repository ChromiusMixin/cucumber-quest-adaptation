/// @description Insert description here
// You can write your code in this editor
image_yscale = KrisTiming.image_yscale

if KrisTiming.Confirm == 0
	{
	x -= 7
	if AfterImageTimer >= 10
	{
		instance_create_layer(x,y,self.layer,KrisTimingAfterimage)
		AfterImageTimer = 0
	}

	}

AfterImageTimer += 1


if Delay > 0
	{
	Delay -= 1
	}