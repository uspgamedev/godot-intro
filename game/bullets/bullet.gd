extends KinematicBody2D

const SPEED_FACTOR = 1024

var dead = false

export(int) var speed = 1

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	move(Vector2(1,0) * speed * SPEED_FACTOR * delta)

func _hit( body ):
	# Alternative: groups
	if not dead and body extends preload("res://monsters/monster.gd"):
		dead = true
		body.queue_free()
	queue_free()
