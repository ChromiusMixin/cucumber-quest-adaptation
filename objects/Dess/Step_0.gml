/// @description Insert description here
// You can write your code in this editor

Flash = lerp(Flash,0,0.2)

timer++;

AiTime--;

HurtSnd = HurtSnds[irandom(1)]

if AiTime <= 0
{
	AfterImage(x,y,1,0,0.02)
	AiTime = AiTimeMax
}

HP = clamp(HP,0,MHP)


 
if HP <= 0
	{
		audio_sound_gain(global.bgm,0,45)
		global.Phase = -3
		
		layer_set_visible("UI", 0)
		layer_set_visible("UI2", 0)
		obj_Camera.FollowPlayer = 2
		obj_Camera.x = lerp(obj_Camera.x,xstart-320,0.2)
		obj_Camera.y = lerp(obj_Camera.y,ystart-240,0.2)
		Fade.stateFadeIn()
		
	}

//Just to speed things along while moves are being made.
if global.Phase == -1
	{
		TurnRemoveTimer -= 1
		
	}
	
if TurnRemoveTimer < 1
	{
		//Target = global.LivingPlayers[irandom_range(0,array_length(global.LivingPlayers))][1]
		Target = global.Players[irandom_range(0,array_length(global.Players)-1)]
	    DmgSet(100+irandom(20))
		DamageEnemy(Target,Dmg,,Testpart,,-50,DmgColor,"DTRF",,c_black)
		
		global.TurnCount -= 1
		TurnRemoveTimer = 45

	
	}

if state == 0
	{
	shakeamp = 50
	y = y+sin(0.05*timer)*0.5
	}


if timer%2 == 0
	{
		shakedir *= -1
	}

if state == 3
	{
	shakeamp = lerp(shakeamp,0,0.1)
	x = xstart + (shakeamp*shakedir)*0.2
	if shakeamp <= 5
		{
		state = 5
		}
	}
		
if state == 5
	{
		x = xstart
		y = ystart
		state = 0
	}
	
	