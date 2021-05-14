extends Button




func _on_Easy_Mode_pressed():
	yield(get_tree().create_timer(0.7), "timeout")
	get_tree().change_scene("res://Scenes/Easy_Mode.tscn")
