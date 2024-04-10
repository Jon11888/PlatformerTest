extends Sprite2D

func _process(_delta):
	GlobalClass.twoX = get_parent().transform.origin.x
	GlobalClass.twoY = get_parent().transform.origin.y
