extends Node2D

const SPEED = 45

var direction = 1
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var raycast_right: RayCast2D = $RaycastRight
@onready var raycast_left: RayCast2D = $RaycastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycast_left.is_colliding():
		animated_sprite.flip_h = false
		direction = 1
		
	position.x += direction * SPEED * delta
