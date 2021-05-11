extends CanvasLayer


func _ready():
	$ScoreBox/Score/Label.text = str(Global.get_time())
