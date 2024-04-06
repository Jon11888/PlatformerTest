extends AnimatableBody2D

var radius = 1
var angle = 0.0
var global_rotation_speed = 45#degrees



func _ready():
	radius = 16
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	angle += deg_to_rad(global_rotation_speed) * _delta
	if angle >=6.28:
		angle = 0

	var point = get_parent().global_transform.origin 
	var ratio = Vector2(cos(angle),sin(angle))
	global_transform.origin = point +(ratio*radius)
