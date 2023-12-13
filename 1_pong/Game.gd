extends Node2D

var score = 0


func _ready():
	for area in %Areas.get_children():
		area.body_entered.connect(func(body):
			if body.name != "Ball":
				return
			match area.name.to_lower():
				"win": update_score(1)
				"lose": update_score(-1)
			)

func update_score(value: int):
	score += value
	$Overlay/Margin/Label.text = "Score: " + str(score).lpad(2,"0")
	%Ball.set_deferred("position", get_viewport_rect().size / 2 )
	%Ball.set_deferred("linear_velocity", Vector2(1000,500))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print($Ball.linear_velocity.length_squared())
