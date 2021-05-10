extends Sprite

var speed = 165

func _process(delta):
	global_position.x += speed * delta
	
	if global_position.x > 180:
		queue_free()
