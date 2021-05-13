extends Node

var speed = 140

var world = null # This will be used for world stuff so the code doesn't have to
				 # Rely on multiple nodes
var time: float = 0 # This counts how many seconds the player has been alive

func get_time() -> float:
	return time

func update_time() -> void:
	time = get_tree().current_scene.get_time()
