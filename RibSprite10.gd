extends Sprite2D

func _process(_delta):
	GlobalClass.tenX = get_parent().transform.origin.x
	GlobalClass.tenY = get_parent().transform.origin.y
