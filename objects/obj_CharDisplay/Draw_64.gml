/// @description Insert description here
// You can write your code in this editor
if OverworldPlayer.Menu > 0 
{
for (var i = 0; i < array_length(global.Party); ++i) {
    draw_sprite(global.Party[i].DisplaySpr,image_index*0.1,x-(100*array_length(global.Party))+(i*300),y+300)
	

}
for (var i = 0; i < array_length(global.Party); ++i) {
	scribble("[8b0][scale,2][fa_center]" + string(global.Party[i].CurrentHP) + "/" + string(global.Party[i].BHP)).shadow(c_black,1).draw(x-(100*array_length(global.Party))+(i*300),450)
	scribble("[8b0][scale,2][fa_center]" + string(global.Party[i].CurrentMP) + "/" + string(global.Party[i].BMP)).shadow(c_black,1).draw(x-(100*array_length(global.Party))+(i*300),475)
	scribble("[8b0][scale,2][fa_center]" + string(global.Party[i].NameShort)).shadow(c_black,1).draw(x-(100*array_length(global.Party))+(i*300),400)
}
}