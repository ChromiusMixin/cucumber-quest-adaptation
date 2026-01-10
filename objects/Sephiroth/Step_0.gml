/// @description Insert description here
// You can write your code in this editor

Flash = lerp(Flash,0,0.2)

timer++;

HP = clamp(HP,0,MHP)

HurtSnd = HurtSnds[irandom(3)]
AtkSnd = AtkSnds[irandom(3)]
Banter = SpellSnds[irandom(3)]

Move = irandom(1)

Spell = irandom(3)


 
if HP <= 0
	{
		audio_stop_sound(global.bgm)
		global.Phase = -3
		layer_set_visible("UI", 0)
		layer_set_visible("UI2", 0)
		Camera.FollowPlayer = 2
		Camera.x = lerp(Camera.x,xstart-320,0.2)
		Camera.y = lerp(Camera.y,ystart-240,0.2)
		Fade.stateFadeIn()
		
	}

//Just to speed things along while moves are being made.
if global.Phase == -1
	{
		TurnRemoveTimer -= 1
		
	}
	
if TurnRemoveTimer == 0
	{
		global.LivingPlayers = []
		//Target = global.LivingPlayers[irandom_range(0,array_length(global.LivingPlayers))][1]
		for (var i = 0; i < array_length(global.Players); ++i) {
		    with global.Players[i]
				{
					if HP > 0
						{
						array_push(global.LivingPlayers,self)
						}
						
				}
		}
		if array_length(global.LivingPlayers) != 0
		{
		Target = global.LivingPlayers[irandom_range(0,array_length(global.LivingPlayers)-1)]
		
		if Move == 0
			{
		ChangeAnim(SephirothTPOut) //Basic Attack
		audio_play_sound(TP,0,0,2)
			}

		if Move == 1
			{
		audio_play_sound(Banter,0,0)
		audio_play_sound(SpellCast,0,0,3)
		ChangeAnim(SephirothCast)
			}		
		}
		else
		{
		audio_stop_sound(global.bgm)
		global.Phase = -3
		layer_set_visible("UI", 0)
		layer_set_visible("UI2", 0)
		Camera.FollowPlayer = 2
		Camera.x = lerp(Camera.x,xstart-320,0.2)
		Camera.y = lerp(Camera.y,ystart-240,0.2)
		Fade.stateFadeIn()
	}
}
if state == 0
	{

	}


if timer%2 == 0
	{
		shakedir *= -1
	}

if state == 3
	{
	shakeamp = lerp(shakeamp,0,0.3)
	x = xstart + (shakeamp*shakedir)
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
		shakeamp = 50
	}
	
	