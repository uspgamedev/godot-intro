extends KinematicBody2D

const SPEED_FACTOR = 64

export(int) var speed = 1

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	move_and_collide(Vector2(-1,0) * speed * SPEED_FACTOR * delta)
