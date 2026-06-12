/// @description Insert description here
// You can write your code in this editor
Options = []
for (var i = 0; i < 5; ++i) {
    array_push(Options,instance_create_depth(x,y-100+(i*80),depth-1,obj_MenuButton))
}

Text = ["Items","Skills","Equipment","Party","Config"]

Unselcol = "[c_white]"
Selcol = "[c_yellow]"
Choice = 0
Active = 0
OtherMenuActive = 0

function UseFunc(){
	if Choice = 0
	{

	}
	if Choice = 3
	{
				audio_play_sound(snd_ConfirmFV,0,0)
				PartyUI = instance_create_depth(x,y,depth-2,obj_PartyCheck)
				OtherMenuActive = 1	
	}
}

function ResetMenu(){
	instance_destroy(obj_PartyCheck)
	OtherMenuActive = 0
}