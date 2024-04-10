extends Sprite2D

func _process(_delta):
	GlobalClass.fourX = get_parent().transform.origin.x
	GlobalClass.fourY = get_parent().transform.origin.y
