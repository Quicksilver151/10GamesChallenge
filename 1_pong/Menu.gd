extends MarginContainer


func _ready():
	for button in %Buttons.get_children():
		button.pressed.connect(func():
			match button.name.to_lower():
				"play" : get_tree().change_scene_to_file("res://Game.tscn")
				"quit" : get_tree().quit()
			)
