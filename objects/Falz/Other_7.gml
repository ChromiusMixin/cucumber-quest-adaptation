/// @description Insert description here
// You can write your code in this editor
if holdanim == 0 && DFND == 0
		{
				ChangeAnim(Idle)
		}

if sprite_index == FalzVivisect
	{
				Jumping = 0
				x = xstart
				y = ystart
				Camera.FollowPlayer = 0
				Camera.OffsetX = 0
				Camera.OffsetY = 0
				depth = BaseDepth
				Attacking = 0
				holdanim = 0
	}

if holdanim == 0 && DFND == 1
		{
				ChangeAnim(Guard)
		}
