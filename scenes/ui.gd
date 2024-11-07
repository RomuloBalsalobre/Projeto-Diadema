extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Label.visible_ratio = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CanvasLayer/Label.text = Globals.fala
	




func _on_timer_timeout():
	Globals.falainit += 5
	$CanvasLayer/Label.visible_characters = Globals.falainit
