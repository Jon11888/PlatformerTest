extends Sprite2D

func _process(_delta):
	GlobalClass.eighteenX = get_parent().transform.origin.x
	GlobalClass.eighteenY = get_parent().transform.origin.y
