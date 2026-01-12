// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateIcons(){

for (var i = 0; i < array_length(global.Players); ++i) //Spawn Icons
{
var parsize = array_length(global.Party)
array_push(global.PlayerIcons, instance_create_depth(view_get_wport(0)-100-(parsize*100)+(i*125),view_get_hport(0)-35,1,obj_PlayerIcon));
}

//for (var i = 0; i < array_length(global.Enemies); ++i) //Spawn Icons (Boss)
//{
//array_push(global.BossIcons, instance_create_layer(600,45+(i*100),"UI2",BossIcon));
//}


}