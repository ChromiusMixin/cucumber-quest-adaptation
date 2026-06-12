///	@description		Hurt targetted enemy whenever called.
///	@function			DamageEnemy(Target,Amount,HitSound,Hitspark,SparkX,SparkY,Color,Font);
///	@arg {Id.Instance} Target	Who you're hitting
///	@arg {Real} Amount 		How much damage are you dealing?
///	@arg {Asset.GMSound}	[HitSound] 	What sound to play when the hit is triggered?
///	@arg {Asset.GMObject}	[Hitspark] 	What effect to show when hitting the Target.
///	@arg {Real} [SparkX] 		Where to draw that spark on the target Horizontally.
///	@arg {Real} [SparkY] 		Where to draw that spark on the target Vertically.
///	@arg {Colour} [Color] 		What Color should the text be?
///	@arg {string} [Font] 		What Font should the text use?
///	@arg {Bool} [OutlineOn] 		Outline On?
///	@arg {Colour} [OutlineColor] 		Outline Color?
///	@arg {Real} [OutlineDist] 		Outline Distance
///	@arg {Real} [DamageType] 		Type of Damage?
//0, Healing
//1, Slashing
//2, Piercing
//3, Blunt
//4, Fire
//5, Water
//6, Electric
//7, Wind
//8, Light
//9, Dark
//10, True
function DamageEnemy(Target, Amount, HitSound = UndertaleDMG,Hitspark = Basespark,SparkX = 0, SparkY = 0, Color = c_white,Font = "DTRF",OutlineOn = 1, OutlineColor = c_navy,OutlineDist = 1,DamageType = 1)
	{
		
		if DamageType -1 != -1 && Target.Res[DamageType-1] == 1 
		{
		Amount = Amount*1.5
		Target.HP -= round(Amount)
		obj_GM.WkHit = 1
		}
		else
		{
		Target.HP -= round(Amount)
		}
		
		var DmgNo = instance_create_depth(Target.x+random_range(-10,15),Target.y-40-(instance_number(obj_DamageCount)*30),-500,obj_DamageCount)
		instance_create_depth(Target.x+SparkX,Target.y+SparkY,Target.depth-300,Hitspark)
		with DmgNo
			{
				dmg = round(abs(Amount))
				draw = 1
				Fnt = Font
				Clr = Color
			}
			

		if variable_instance_exists(Target,"Hurt") && DamageType > 0
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
		


