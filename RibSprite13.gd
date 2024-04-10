extends Sprite2D

func _process(_delta):
	GlobalClass.thirteenX = get_parent().transform.origin.x
	GlobalClass.thirteenY = get_parent().transform.origin.y
