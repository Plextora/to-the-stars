extends Node

var world = null
var time: float = 0

func get_time() -> float:
	return time

func update_time() -> void:
	time = get_tree().current_scene.get_time()
