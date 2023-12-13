extends CharacterBody2D

@export var bot: bool = false
const SPEED = 1080
@onready var x_pos = get_global_position().x
func _physics_process(delta):
	if bot:
		position.y = %Ball.position.y
		return
	
	position.x = x_pos
	var direction = Input.get_axis("ui_up", "ui_down")
	velocity.y = direction * SPEED
	
	move_and_slide()
