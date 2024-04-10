extends Sprite2D

func _process(_delta):
	GlobalClass.twentythreeX = get_parent().transform.origin.x
	GlobalClass.twentythreeY = get_parent().transform.origin.y
