extends Node2D

func _physics_process(_delta):
	if get_node("Botao").isPressed():
		get_node("Laser").desativaColisao()

	if Input.is_action_pressed("ui_cancel"):
		get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
		get_node("/root/Global").posicao_menu(352, 544)

	if get_node("Botao_Dica").isPressed():
		if get_node("/root/Global").dicas > 0:
			get_node("/root/Global").dicas -= 1
			$Dica.visible_characters = -1
