extends CharacterBody2D

signal hit

@export var speed = 350
@export var rotation_speed = 3.0

var rotation_direction = 0

func get_input():
	rotation_direction = Input.get_axis("Rotate Left", "Rotate Right")
	velocity = transform.x * Input.get_axis("Fly Backwards", "Fly Forward") * speed

func _physics_process(delta):
	get_input()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
	
	
