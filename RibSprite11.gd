extends Sprite2D

func _process(_delta):
	GlobalClass.elevenX = get_parent().transform.origin.x
	GlobalClass.elevenY = get_parent().transform.origin.y
