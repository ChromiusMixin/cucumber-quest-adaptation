/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < array_length(global.Party); ++i) {
    draw_sprite(global.Party[i].DisplaySpr,image_index*0.1,x+225+(i*100),y)
	draw_text(x+200+(i*100),y,(global.Party[i].NameShort))

}