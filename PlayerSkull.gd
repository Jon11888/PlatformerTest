extends StaticBody2D
var angle = 1.0

func _process(_delta):
	var skullX = get_parent().linear_velocity.x
	var skullY = get_parent().linear_velocity.y
	angle = atan2(skullY,skullX)

	var Orb_x = get_parent().global_position.x 
	var Orb_y = get_parent().global_position.y
	global_position = Vector2(Orb_x,Orb_y)

	global_rotation = angle
