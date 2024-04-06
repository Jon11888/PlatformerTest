extends AnimatableBody2D

var radius = 1
var angle = 0.0
var direction = 1
func _ready():
	radius = -8

func _on_node_2d_spin_left():
	direction = 1

func _on_node_2d_spin_right():
	direction = -1

func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		angle += get_parent().rotation+(_delta*direction)
	else:
		angle += get_parent().rotation+(_delta * (direction*-1))
	var point = get_parent().global_transform.origin 
	var ratio = Vector2(cos(angle),sin(angle))
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		print (direction)
	
	global_position = point +(ratio*radius)
