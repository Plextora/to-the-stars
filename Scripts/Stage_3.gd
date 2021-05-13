extends Timer






func _on_Stage_3_timeout():
	Global.speed = 193
	AudioManager.play("res://Sounds/stage_change.wav")
