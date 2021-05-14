extends Position2D

export var monster_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var monster = monster_scene.instance()
	monster.position = position
	var world = get_parent() # AGAIN, DO NOT DO THIS
	world.add_child(monster)
