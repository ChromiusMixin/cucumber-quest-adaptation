// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpdateHealthValues(){
	//Set Player Health and MP (UI)
for (var i = 0; i < array_length(global.Players); ++i) {
    with global.PlayerIcons[i]
		{
			HP = global.Players[i].HP
			MP = global.Players[i].MP
			MHP = (global.Players[i].HP/global.Players[i].MHP)
			MMP = (global.Players[i].MP/global.Players[i].MMP)
			
		}
}

////Set Enemy Health and MP (UI)
//for (var i = 0; i < array_length(global.Enemies); ++i) {
//    with global.BossIcons[i]
//		{
//			HP = global.Enemies[i].HP
//			MHP = (global.Enemies[i].HP/global.Enemies[i].MHP)			
//		}
//}

}