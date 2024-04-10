extends Sprite2D

func _process(_delta):
	GlobalClass.twentyX = get_parent().transform.origin.x
	GlobalClass.twentyY = get_parent().transform.origin.y
