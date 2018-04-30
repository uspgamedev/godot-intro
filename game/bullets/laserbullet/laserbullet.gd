extends KinematicBody2D

func _physics_process(delta):
	move_and_collide(Vector2(1,0) * 128 * delta)

func _on_target_hit(body):
	body.queue_free()
