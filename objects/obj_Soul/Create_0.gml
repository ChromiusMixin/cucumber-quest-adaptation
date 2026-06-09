/// @description Insert description here
// You can write your code in this editor
Parent = 0
bspd = 3
spd = bspd
hdir = 0
vdir = 0
image_angle = 0
soulgrz = instance_create_depth(x,y,depth+1,obj_SoulGrz)
soulgrz.scale = 3

IFT = 0
IFTMax = 50

function hurtplayer(amt)
{
	if IFT <= 0
	{
	DamageEnemy(global.Players[irandom(array_length(global.Players)-1)],amt,,,,,,,,,,10)
	IFT = IFTMax
	}
}