extends Sprite2D

func _process(_delta):
	GlobalClass.seventeenX = get_parent().transform.origin.x
	GlobalClass.seventeenY = get_parent().transform.origin.y
