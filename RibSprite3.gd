extends Sprite2D

func _process(_delta):
	GlobalClass.threeX = get_parent().transform.origin.x
	GlobalClass.threeY = get_parent().transform.origin.y
