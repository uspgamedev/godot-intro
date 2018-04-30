extends Node2D

const TowerScene = preload("res://towers/crystalturret/crystalturret.tscn")

func _input(event):
	if event.is_action_pressed("select_position"):
		var tower = TowerScene.instance()
		tower.position = event.position/4
		add_child(tower)