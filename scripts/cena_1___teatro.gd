extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$background/sague/sangue.visible = false
	$background/relogio/relogio.visible = false
	$background/livro/livro.visible = false
	$background/postit/postit.visible = false
	$background/chave/chave.visible = false
	$background/ficar.visible = false
	$background/sair.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_sague_mouse_entered():
	$background/sague/sangue.visible = true

func _on_sague_mouse_exited():
	$background/sague/sangue.visible = false
		
func _on_relogio_mouse_entered():
	$background/relogio/relogio.visible = true
	
func _on_relogio_mouse_exited():
	$background/relogio/relogio.visible = false

func _on_livro_mouse_entered():
	$background/livro/livro.visible = true

func _on_livro_mouse_exited():
	$background/livro/livro.visible = false

func _on_postit_mouse_entered():
	$background/postit/postit.visible = true

func _on_postit_mouse_exited():
	$background/postit/postit.visible = false

func _on_chave_mouse_entered():
	$background/chave/chave.visible = true

func _on_chave_mouse_exited():
	$background/chave/chave.visible = false




func _on_sague_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print($background/sague/sangue.visible)
		Globals.falainit = 0
		Globals.fala = "Esse padrão de sangue pode ser encontrado em feridas causadas por material cortante ou sangue cenográfico"



func _on_relogio_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		Globals.falainit = 0
		Globals.fala = "relogio"


func _on_chave_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		Globals.falainit = 0
		Globals.fala = "chave"
		$background/ficar.visible = true
		$background/sair.visible = true
		


func _on_ficar_pressed():
	$background/ficar.visible = false
	$background/sair.visible = false


func _on_sair_pressed():
	$background/ficar.visible = false
	$background/sair.visible = false
	get_tree().change_scene_to_file("res://scenes/cena_2___recepção.tscn")
