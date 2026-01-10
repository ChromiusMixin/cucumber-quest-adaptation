/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y,string(Hittime))

//draw_text(x+60,y,string(SkillID))

scribble_anim_wheel(0.75, 0.1, 0.2)

with global.PlayerIcons[PlayerID]
	{	
		draw_text_scribble(x-0,y-35,"[fa_center][fa_bottom][8b0][scaleStack,0.75][wheel]"+string(global.Players[PlayerID].stancetext))
		draw_text_scribble(x-45,y-50,"[fa_center][fa_bottom][8b0][scaleStack,0.75]"+string(global.Players[PlayerID].VP))
	}


if AC = 1 && obj_GM.CurrentOption == 0
	{
	draw_set_font(Undertale)
	if Stance != 1
	{
	draw_text_ext(320,150,string(global.MPCost)+" MP.\nDoes no damage, inflicts 24 Gash",24,200 )
	}
	else
	draw_text_scribble_ext(320,150,"[8b0]"+string(global.MPCost)+" MP.\nDoes no damage, inflicts [#ff4f75]30[/c] Gash",200)
	ResetText()
	}
if AC = 1 && obj_GM.CurrentOption == 1
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.\nDoes a large amount of damage.\nExhausts VP to deal "+ string(1+(VP/100))+"x damage.",24,200 )
	ResetText()
	}

if AC = 1 && obj_GM.CurrentOption == 2
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.\nDoes no damage\nProc bleed one additional time and add half of Gash to Bleed.",24,200 )
	ResetText()
	}

if AC = 1 && obj_GM.CurrentOption == 3
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.\nGains more power the more bleed the target has.",24,200 )
	ResetText()
	}