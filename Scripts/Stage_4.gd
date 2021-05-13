extends Timer






func _on_Stage_4_timeout():
	Global.speed = 210
	AudioManager.play("res://Sounds/stage_change.wav")
