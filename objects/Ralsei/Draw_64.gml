/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y,string(Hittime))

//draw_text(x+60,y,string(SkillID))

if AC = 1 && GM.CurrentOption == 0
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.    Heal 1 Ally by 53% of their Max HP",24,200 )
	ResetText()
	}
if AC = 1 && GM.CurrentOption == 1
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.   Heal All Allies by 40% of their Max HP",24,200 )
	ResetText()
	}

if AC = 1 && GM.CurrentOption == 2
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.    Decrease an Enemy's attack level by 1",24,200 )
	ResetText()
	}

if AC = 1 && GM.CurrentOption == 3
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.    Decrease All Enemies attack level by 1",24,200 )
	ResetText()
	}