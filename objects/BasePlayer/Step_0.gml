/// @description Menu Shit, detect turn order
// You can write your code in this editor

///Initialize Animation System
var Frame = image_index
var AnimEnd = image_number -1
var Anim = sprite_index

if HP > MHP
	{
		HP = MHP
	}

if MP > MMP
	{
		HP = MHP
	}

if Frame > AnimEnd
		{
				ChangeAnim(Idle)
		}
