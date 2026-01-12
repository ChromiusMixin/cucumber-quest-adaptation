///	@description		Hurt targetted enemy whenever called.
///	@function			DamageEnemy(Target,Amount,HitSound,Hitspark,SparkX,SparkY,Color,Font);
///	@arg {Id.Instance} Target	Who you're hitting
///	@arg {Real} Amount 		How much damage are you dealing?
///	@arg {Asset.GMSound}	[HitSound] 	What sound to play when the hit is triggered?
///	@arg {Asset.GMObject}	[Hitspark] 	What effect to show when hitting the Target.
///	@arg {Real} [SparkX] 		Where to draw that spark on the target Horizontally.
///	@arg {Real} [SparkY] 		Where to draw that spark on the target Vertically.
///	@arg {Colour} [Color] 		What Color should the text be?
///	@arg {Asset.GMFont} [Font] 		What Font should the text use?

function DamageEnemyOld(Target, Amount, HitSound = UndertaleDMG,Hitspark = Basespark,SparkX = 0, SparkY = 0, Color = c_white,Font = Font1,OutlineOn = 1, OutlineColor = c_navy,OutlineDist = 1,DamageType = 1)
	{
		Target.HP -= round(Amount)
		var DmgNo = instance_create_layer(Target.x+random_range(-10,15),Target.y-40-(instance_number(obj_DamageCount)*30),"UI2",obj_DamageCount)
		instance_create_layer(Target.x+SparkX,Target.y+SparkY,"VFX",Hitspark)
		font_enable_effects(Font, true, {
		    outlineEnable: OutlineOn,
		    outlineDistance: OutlineDist,
		    outlineColour: OutlineColor
		});		
		with DmgNo
			{
				dmg = round(abs(Amount))
				draw = 1
				Fnt = Font
				Clr = Color
			}
		if variable_instance_exists(Target,"Hurt") && DamageType == 1
			{
						with Target
							{
								if DFND == 0
									{
								sprite_index = Hurt
								image_index = 0
									}
							}
			
			}
		if variable_instance_exists(Target,"HurtSnd") && DamageType == 1
			{
						with Target
							{
								audio_play_sound(HurtSnd,1,0,0.8)
							}
						
					}
					audio_stop_sound(HitSound)
					audio_play_sound(HitSound,1,0,0.8)
			}
		


