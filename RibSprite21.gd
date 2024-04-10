extends Sprite2D

func _process(_delta):
	GlobalClass.twentyoneX = get_parent().transform.origin.x
	GlobalClass.twentyoneY = get_parent().transform.origin.y
