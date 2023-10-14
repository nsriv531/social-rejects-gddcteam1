extends Node2D

var crayon = preload("res://scenes/crayon.tscn")

<<<<<<< HEAD
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
=======
var counter = 0
>>>>>>> a1a4380bae7f7cb924f9bc3d04c0f9dad2364748

func _on_player_spawn_crayon(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)
	
<<<<<<< HEAD

func _on_wall_right_body_entered(body):
	if body.is_in_group("Player"):
		global_position = Vector2(40, 861)
=======
func level_detect():
	if get_tree().current_scene.name == "L1":
		enemies_destroyed(10)
		
	if get_tree().current_scene.name == "L2":
		enemies_destroyed(5)
		level_switch(enemies_destroyed)
	if get_tree().current_scene.name == "L3":
		enemies_destroyed(1)
		level_switch(enemies_destroyed)
	if get_tree().current_scene.name == "L4":
		enemies_destroyed(20)
		level_switch(enemies_destroyed)
	if get_tree().current_scene.name == "L5":
		enemies_destroyed(1)
		level_switch(enemies_destroyed)
		
func enemies_destroyed(enemy_counter):
	counter = enemy_counter 
	while counter > 0 :
		if enemy_destroyed:
			counter = counter - 1
	return enemy_counter
	
func level_switch(level):
	if level = 10 :
		get_tree().change_scene_to_file("res://scenes/L2.tscn")
	if level = 15 :
		get_tree().change_scene_to_file("res://scenes/L3.tscn")
	if level = 1 :
		get_tree().change_scene_to_file("res://scenes/L4.tscn")
	
 

>>>>>>> a1a4380bae7f7cb924f9bc3d04c0f9dad2364748
