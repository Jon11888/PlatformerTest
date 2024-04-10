extends Sprite2D

func _process(_delta):
	GlobalClass.fourteenX = get_parent().transform.origin.x
	GlobalClass.fourteenY = get_parent().transform.origin.y
