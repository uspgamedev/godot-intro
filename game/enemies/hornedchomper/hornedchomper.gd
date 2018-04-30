extends KinematicBody2D

export(int) var speed = 1

func _physics_process(delta):
	move_and_collide(Vector2(-1,0) * 64 * speed * delta)
