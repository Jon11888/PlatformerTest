extends Sprite2D

func _process(_delta):
	GlobalClass.twelveX = get_parent().transform.origin.x
	GlobalClass.twelveY = get_parent().transform.origin.y
