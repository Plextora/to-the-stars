extends MarginContainer

func _physics_process(delta):
	$HBoxContainer/VBoxContainer/FPS.text = "FPS: " + str(Performance.get_monitor(Performance.TIME_FPS))
# Makes FPS visible in game!
