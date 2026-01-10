/// @description Insert description here
// You can write your code in this editor
x = lerp(x,xstart-200,0.1)
y = lerp(y,ystart-10,0.1)
HPCreep = lerp(HPCreep,MHP,0.1)
MPCreep = lerp(MPCreep,MMP,0.1)

if MHP < 0 
	{
		MHP = 0
		HPCreep = 0
	}

if MMP < 0 
	{
		MMP = 0
		MPCreep = 0
	}


if MHP > 1 
	{
		MHP = 1
		HPCreep = MHP
	}

if MMP > 1 
	{
		MMP = 1
		MPCreep = MMP
	}
