/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y,string(Hittime))

//draw_text(x+60,y,string(SkillID))

if AC = 1 && GM.CurrentOption == 0
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.    Increase 1 Ally's Defense Level by 1",24,200 )
	ResetText()
	}
if AC = 1 && GM.CurrentOption == 1
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.   Not Implemented.",24,200 )
	ResetText()
	}

if AC = 1 && GM.CurrentOption == 2
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.    Increase All Allies Defense Level by 1",24,200 )
	ResetText()
	}

if AC = 1 && GM.CurrentOption == 3
	{
	draw_set_font(Undertale)
	draw_text_ext(320,150,string(global.MPCost)+" MP.    Slash a Target twice with a slightly higher damage Average.",24,200 )
	ResetText()
	}