extends StaticBody2D

export var bullet_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	$SpawnSFX.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var bullet = bullet_scene.instance()
	bullet.position = position + $ShootingOffset.position
	var world = get_parent() # DO NOT DO THIS
	world.add_child(bullet)
	$ShootSFX.play()
