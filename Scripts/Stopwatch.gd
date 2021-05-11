extends CanvasLayer


var time = 0.0



func _process(delta):
	time += delta

func get_time():
	return time
