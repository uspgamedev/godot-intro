extends KinematicBody2D

export var speed: int = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("chomping")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if move_and_collide(Vector2.LEFT * speed * delta) != null:
		pass
