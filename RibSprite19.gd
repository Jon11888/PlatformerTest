extends Sprite2D

func _process(_delta):
	GlobalClass.ninteenX = get_parent().transform.origin.x
	GlobalClass.ninteenY = get_parent().transform.origin.y
