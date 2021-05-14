extends Button





func _on_Medium_Mode_pressed():
	yield(get_tree().create_timer(0.7), "timeout")
	get_tree().change_scene("res://Scenes/Medium_Mode.tscn")
