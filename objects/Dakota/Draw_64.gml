/// @description Insert description here
// You can write your code in this editor
//draw_text(x,y,string(Hittime))

//draw_text(x+60,y,string(SkillID))

if AC = 1 && obj_GM.CurrentOption == 0
	{
	draw_set_font(UTF)
	draw_text_ext(320,150,"A Flurry of Nonstop Punches.",24,200 )
	ResetText()
	}
if AC = 1 && obj_GM.CurrentOption == 1
	{
	draw_set_font(UTF)
	draw_text_ext(320,150,"A Punch straight to the core, decreases defense by 1 level.",24,200 )
	ResetText()
	}

if AC = 1 && obj_GM.CurrentOption == 2
	{
	draw_set_font(UTF)
	draw_text_ext(320,150,"Breathe in with a steady pace, restore HP and cure Ailments.",24,200 )
	ResetText()
	}