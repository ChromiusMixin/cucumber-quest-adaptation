// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpdateIcons(){
//Set Party Icons
for (var i = 0; i < array_length(global.Players); ++i) {
    with global.PlayerIcons[i]
		{
			sprite_index = global.Players[i].Icon
		}
	with global.Players[i]
		{
			PlayerID = i
		}
}

////Set Enemy Icons
//for (var i = 0; i < array_length(global.Enemies); ++i) {
//    with global.BossIcons[i]
//		{
//			sprite_index = global.Enemies[i].Icon
//		}
//}



}