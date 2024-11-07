extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_cutscene_1_finished():
	$"cutscene 1".stop()
	$"cutscene 2".play()


func _on_cutscene_2_finished():
	$"cutscene 2".stop()
	$"cutscene 3".play()
	


func _on_cutscene_3_finished():
	get_tree().change_scene_to_file("res://scenes/cena_1___teatro.tscn")
