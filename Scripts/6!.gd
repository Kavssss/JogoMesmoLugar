extends Node2D

var resultado = ""
	
func _input(event):
	if event is InputEventKey:
		if event.echo == false:
			if !char(event.scancode) in "wasdWASD":
				if event.scancode >= 16777350 and event.scancode <= 16777359:
					resultado += str(event.scancode)[-1]
				else:
					resultado += char(event.scancode)

func _physics_process(_delta):
	if "772200" in resultado:
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()

	if Input.is_action_pressed("ui_cancel"):
		get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
		get_node("/root/Global").posicao_menu(352, 544)

	if get_node("Botao_Dica").isPressed():
		if get_node("/root/Global").dicas > 0:
			get_node("/root/Global").dicas -= 1
			$Dica.visible_characters = -1
