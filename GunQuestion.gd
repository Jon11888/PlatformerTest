extends AnimatableBody2D

@onready var center = $"../PlayerHitbox"
@export var radius = 1
@export var angle = 0.0

func _ready():
	radius = -16
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var orangeX = center.linear_velocity.x
	var orangeY = center.linear_velocity.y
	angle = atan2(orangeY,orangeX)

	var point = center.global_transform.origin 
	var ratio = Vector2(cos(angle),sin(angle))
	
	global_position = point +(ratio*radius)

