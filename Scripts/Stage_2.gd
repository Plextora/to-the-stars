extends Timer




func _on_Stage_2_timeout():
	Global.speed = 175
	AudioManager.play("res://Sounds/stage_change.wav")
