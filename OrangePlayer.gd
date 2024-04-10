extends RigidBody2D
var hitForce : float = 25.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var dir = global_position.direction_to(get_global_mouse_position())
		apply_impulse(dir * hitForce)
	GlobalClass.playerX = global_position.x
	GlobalClass.playerY = global_position.y
