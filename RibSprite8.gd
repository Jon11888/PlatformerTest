extends Sprite2D

func _process(_delta):
	GlobalClass.eightX = get_parent().transform.origin.x
	GlobalClass.eightY = get_parent().transform.origin.y
