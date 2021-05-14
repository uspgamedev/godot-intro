extends KinematicBody2D

export var speed := 200
export var explo_sfx_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if move_and_collide(Vector2.RIGHT * speed * delta) != null:
		pass

func _on_Hitbox_body_entered(body: KinematicBody2D):
	if body != null and body.is_in_group("monster"):
		var explo := explo_sfx_scene.instance()
		explo.position = position
		get_parent().add_child(explo) # YOU KNOW THE DRIFT
		body.queue_free()
		queue_free()


func _on_Timer_timeout():
	queue_free()
