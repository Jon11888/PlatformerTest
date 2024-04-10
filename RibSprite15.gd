extends Sprite2D

func _process(_delta):
	GlobalClass.fifteenX = get_parent().transform.origin.x
	GlobalClass.fifteenY = get_parent().transform.origin.y
