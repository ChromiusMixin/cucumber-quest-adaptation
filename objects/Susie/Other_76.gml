/// @description Insert description here
// You can write your code in this editor
if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "Fire":
            var Projectile = instance_create_depth(x,y-50,depth,BusterShot)
			
			DmgSet(325)
			Projectile.Dmg = Dmg
			Projectile.Dmgcolor = DmgColor
			audio_play_sound(RudeBusterSwing,0,0)
        break;
    }
}