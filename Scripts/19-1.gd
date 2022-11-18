extends Node2D

var resultado = ""
	
func _input(event):
	if event is InputEventKey:
		if event.echo == false:
			if !char(event.scancode) in "wadWAD":
				resultado += char(event.scancode)

func _physics_process(_delta):
	if "SSIIMMPPLLEESS" in resultado:
		$Titulo.text = "19- \"1- Simples\""
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()

	if Input.is_action_pressed("ui_cancel"):
		get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
		get_node("/root/Global").posicao_menu(352, 544)

	$Dica.visible_characters = get_node("Botao_Dica").dica_visivel
