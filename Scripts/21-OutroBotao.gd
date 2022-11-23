extends Node2D

func _physics_process(_delta):
	if get_node("/root/Global").botaoCreditos:
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()

	if Input.is_action_pressed("ui_cancel"):
		get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
		get_node("/root/Global").posicao_menu(320, 544)

	$Dica.visible_characters = get_node("Botao_Dica").dica_visivel
