extends Position2D

const EnemyScene = preload("res://enemies/hornedchomper/hornedchomper.tscn")

func _on_spawn():
	var enemy = EnemyScene.instance()
	enemy.position = position
	get_parent().add_child(enemy)
