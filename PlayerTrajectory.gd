extends StaticBody2D

func _process(_delta):

	var Orb_x = get_parent().global_position.x 
	var Orb_y = get_parent().global_position.y
	var Crystal_x = get_parent().linear_velocity.x
	var Crystal_y = get_parent().linear_velocity.y 
	global_position = Vector2(Orb_x+Crystal_x,Orb_y+Crystal_y)
	GlobalClass.playerSpeedX = get_parent().linear_velocity.x 
	GlobalClass.playerSpeedY = get_parent().linear_velocity.y 
