extends StaticBody2D

func _process(_delta):

	var Orb_x = get_parent().global_position.x 
	var Orb_y = get_parent().global_position.y 
	global_position = Vector2(Orb_x-64,Orb_y-64)
