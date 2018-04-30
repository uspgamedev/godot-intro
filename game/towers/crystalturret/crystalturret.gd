extends StaticBody2D

const LaserBulletScene = preload("res://bullets/laserbullet/laserbullet.tscn")

func _on_shoot():
	var bullet = LaserBulletScene.instance()
	bullet.position = position + $ShootingPosition.position
	get_parent().add_child(bullet)
