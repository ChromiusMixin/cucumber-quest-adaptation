/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_MainMenuTitle)	
	{
		if !array_contains(obj_MainMenuTitle.Opts,self)
		{
		array_push(obj_MainMenuTitle.Opts,self)
		}
	}