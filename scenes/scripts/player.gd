extends Area2D
class_name Player

signal spawn_crayon(location)

var speed = 300

var input_vector = Vector2.ZERO

var hp = 3

@onready var muzzle = $Muzzle
@onready var kid = $Sprite2D/AnimationPlayer

func _physics_process(delta):
	kid.play("kid_small")
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	global_position += input_vector * speed * delta
	
	if Input.is_action_just_released("shoot"):
		shoot_crayon()
	
func take_damage(damage):
	hp -= damage
	if hp <= 0:
		queue_free()

func _on_area_entered(area):
		if area.is_in_group("enemies"):
			area.take_damage(1)	

		
func shoot_crayon():
	emit_signal("spawn_crayon", muzzle.global_position)


