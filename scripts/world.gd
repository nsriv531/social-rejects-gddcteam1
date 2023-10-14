extends Node2D

var crayon = preload("res://scenes/crayon.tscn")

func _on_player_spawn_crayon(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)


	
