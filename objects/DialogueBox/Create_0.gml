/// @description Insert description here
// You can write your code in this editor
x = view_wport[0]/2
ystart = 25
y = ystart-400
image_yscale = 1
image_xscale = 6
text = []
progression = 0
array_push(text,"Placeholder Text!")
//array_push(text,"Holding Confirm makes the text go faster, [delay,150]it's kind of important to survive. [delay,150]Damage is never final, [delay,100]keep fighting 'till you drop.")
//array_push(text,"That's all, [delay,200]good luck.")
delay = 2

if instance_exists(OverworldPlayer)
{
OverworldPlayer.Talk = 1
}
Typist = scribble_typist();
BaseSpd = 0.5
Typist.in(BaseSpd,0);
status = Typist.get_state()

if global.Scent = 1
{
	textcolor = "[c_black]"
}
else
{
	textcolor = "[c_white]"
}