extends YSort


export var crystal_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _unhandled_input(event):
	if event.is_action_pressed("click"):
		var crystal := crystal_scene.instance()
		crystal.position = event.position / scale
		add_child(crystal)
