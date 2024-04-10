extends Sprite2D

func _process(_delta):
	GlobalClass.oneX = get_parent().transform.origin.x
	GlobalClass.oneY = get_parent().transform.origin.y
