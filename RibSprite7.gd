extends Sprite2D

func _process(_delta):
	GlobalClass.sevenX = get_parent().transform.origin.x
	GlobalClass.sevenY = get_parent().transform.origin.y
