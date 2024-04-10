extends Sprite2D

func _process(_delta):
	GlobalClass.twentyfiveX = get_parent().transform.origin.x
	GlobalClass.twentyfiveY = get_parent().transform.origin.y
