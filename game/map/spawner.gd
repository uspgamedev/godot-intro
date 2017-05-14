extends Node2D

export(PackedScene) var monster_scene

func _spawn():
	var monster = monster_scene.instance()
	monster.set_pos(get_pos())
	get_parent().add_child(monster)
