extends Label



func _ready():
	set_visible(false)


func _on_Stage_4_timeout():
	set_visible(true)
	yield(get_tree().create_timer(3.0), "timeout")
	set_visible(false)
