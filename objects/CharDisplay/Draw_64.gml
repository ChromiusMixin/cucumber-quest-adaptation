/// @description Insert description here
// You can write your code in this editor
if OverworldPlayer.Menu > 0 
{
for (var i = 0; i < array_length(global.Party); ++i) {
    draw_sprite(global.Party[i].DisplaySpr,image_index*0.1,x-(100*array_length(global.Party))+(i*300),y+300)
	draw_text(x-(100*array_length(global.Party))+200+(i*300),y,(global.Party[i].NameShort))

}
}