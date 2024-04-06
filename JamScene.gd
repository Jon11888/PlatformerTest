extends Node2D

signal spinLeft()
signal spinRight()

func _on_spin_left():
	print ("left")
	
func _on_spin_right():
	print ("right")

func _process(_delta):
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
			emit_signal("spinLeft")
		if event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
			emit_signal("spinRight")
