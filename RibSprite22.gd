extends Sprite2D

func _process(_delta):
	GlobalClass.twentytwoX = get_parent().transform.origin.x
	GlobalClass.twentytwoY = get_parent().transform.origin.y
