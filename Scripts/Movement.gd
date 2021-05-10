extends KinematicBody2D

var bullet = preload("res://Scenes/Bullet.tscn")

signal create_bullet(bullet, location)

func _process(delta):
	global_position.y = lerp(global_position.y, get_viewport().get_mouse_position().y, 0.2)
	
	if Input.is_action_just_pressed("ui_right"):
		emit_signal("create_bullet", bullet, global_position)
	
	if Input.is_action_just_pressed("shoot"):
		emit_signal("create_bullet", bullet, global_position)
	
	if Input.is_action_just_pressed("ui_accept"):
		emit_signal("create_bullet", bullet, global_position)
	
