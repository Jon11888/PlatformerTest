extends Sprite2D

func _process(_delta):
	GlobalClass.sixteenX = get_parent().transform.origin.x
	GlobalClass.sixteenY = get_parent().transform.origin.y
