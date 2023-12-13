extends Node2D

func _physics_process(delta):
	
	position.y -= clamp((global_position.y - %Ball.global_position.y),-1, 1) * 5
	
	
