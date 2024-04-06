extends Sprite2D
var angle = 1.0

func _process(_delta):
	angle = (rad_to_deg(get_parent().global_rotation))+180
	if (angle>270 or angle<90):
		flip_v = true
	else:
		flip_v = false

