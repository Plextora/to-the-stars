extends CanvasLayer


func _ready():
	set_visible(false)

func _input(event):
	if event.is_action_pressed("ui_cancel"): # default escape button
		set_visible(!get_tree().paused) # if isn't paused then hide
		get_tree().paused = !get_tree().paused # toggle pause button


func _on_Button_pressed():
	get_tree().paused = false
	set_visible(false)
	

func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible


func _on_Fullscreen_pressed():
	OS.window_fullscreen = !OS.window_fullscreen # set the game to fullscreen


func _on_BackToMenu_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	set_visible(false)
