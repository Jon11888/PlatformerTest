extends Sprite2D

func _process(_delta):
	GlobalClass.nineX = get_parent().transform.origin.x
	GlobalClass.nineY = get_parent().transform.origin.y
