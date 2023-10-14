extends Node2D

var crayon = preload("res://scenes/crayon.tscn")

@onready var timer = $Timer
@onready var marker = $Marker2D
@onready var cacti = preload("res://scenes/enemy.tscn")

func _ready():
	$Timer.start()

func _on_timer_timeout():
	var cactus = cacti.instantiate()
	cactus.position = marker.position
	$enemy.add_child(cactus)
	pass

func _on_player_spawn_crayon(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)
	

func _on_wall_right_body_entered(body):
	if body.is_in_group("Player"):
		global_position = Vector2(40, 861)
