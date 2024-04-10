extends Sprite2D

func _process(_delta):
	GlobalClass.sixX = get_parent().transform.origin.x
	GlobalClass.sixY = get_parent().transform.origin.y
