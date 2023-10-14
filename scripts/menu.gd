extends Control

func _physics_process(delta):
	
	if Input.get_action_strength("shoot"):
		on_button_press()
	
func on_button_press():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
