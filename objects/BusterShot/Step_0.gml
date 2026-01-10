/// @description Insert description here
// You can write your code in this editor
direction += 3.5 * sign( angle_difference( point_direction(x,y, Target.x, Target.y), direction) );
image_angle = direction;
speed = 40



Timer -= 1

	if Timer == 0 
	{
		var Afterimage = instance_create_depth(x,y,depth,BusAfimg)
		Afterimage.image_angle = image_angle
		Timer = Imgtime
	}
	
if place_meeting(x,y,Target)
	{
		Target.Flash = 1
		DamageEnemy(Target,Dmg,RudeBusterHit,Testpart,,,Dmgcolor,"DTRF")
		var Hit1 = instance_create_depth(Target.x,Target.y-50,depth,BusExplode)
		var Hit2 = instance_create_depth(Target.x,Target.y-50,depth,BusExplode)
		var Hit3 = instance_create_depth(Target.x,Target.y-50,depth,BusExplode)
		var Hit4 = instance_create_depth(Target.x,Target.y-50,depth,BusExplode)
		Hit1.direction = 45
		Hit2.direction = 135
		Hit3.direction = -45
		Hit4.direction = -135
		instance_destroy()
	}