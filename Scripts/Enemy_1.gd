extends Sprite

var speed = 140

var particles = preload("res://Scenes/Enemy_Descruction_Particles.tscn")

signal create_enemy_kill_particles(particles, location)


func _ready():
	if Global.world != null:
		connect("create_enemy_kill_particles", Global.world, "_on_Create_enemy_kill_particles")

func _process(delta):
	global_position.x -= speed * delta
	
	
	if global_position.x < 0:
		get_tree().change_scene("res://Scenes/game over.tscn")


func _on_Hitbox_area_entered(area):
	if area.is_in_group("Enemy_Damager"):
		emit_signal("create_enemy_kill_particles", particles, global_position)
		area.get_parent().queue_free()
		queue_free()
	if area.is_in_group("Player"):
		get_tree().change_scene("res://Scenes/game over.tscn")
