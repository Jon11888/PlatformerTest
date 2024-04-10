extends Sprite2D

func _process(_delta):
	GlobalClass.twentyfourX = get_parent().transform.origin.x
	GlobalClass.twentyfourY = get_parent().transform.origin.y
