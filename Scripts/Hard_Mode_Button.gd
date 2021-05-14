extends Button





func _on_Hard_Mode_pressed():
	yield(get_tree().create_timer(0.7), "timeout")
	get_tree().change_scene("res://Scenes/World.tscn")
