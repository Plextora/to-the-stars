extends Position2D

signal create_enemy(enemy, location)

var enemy = preload("res://Scenes/Enemy_1.tscn")

func _on_Timer_timeout():
	randomize()
	emit_signal("create_enemy", enemy, Vector2(180, rand_range(0, 90)))
