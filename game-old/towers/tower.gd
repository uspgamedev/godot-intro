extends StaticBody2D

const BULLET = preload("res://bullets/bullet.tscn")

func _ready():
	pass

func _shoot():
	var bullet = BULLET.instance()
	bullet.set_pos(get_pos() + Vector2(1,0) * 8)
	get_parent().add_child(bullet)
