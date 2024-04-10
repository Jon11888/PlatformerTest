extends Sprite2D

func _process(_delta):
	GlobalClass.fiveX = get_parent().transform.origin.x
	GlobalClass.fiveY = get_parent().transform.origin.y
