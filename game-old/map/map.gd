extends YSort

const TOWER = preload("res://towers/tower.tscn")

func _ready():
	set_process_input(true)

func _input(event):
	if event.is_action_released("game_place_tower"):
		var tower = TOWER.instance()
		tower.set_pos(event.pos/4)
		add_child(tower)
