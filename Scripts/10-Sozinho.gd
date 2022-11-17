extends Node2D

func _physics_process(_delta):
	if get_node("Botao").isPressed():
		get_node("Laser/Sprite").play("open")
		get_node("Laser/CollisionShape2D").disabled = true
	else:
		get_node("Laser/Sprite").play("closed")
		get_node("Laser/CollisionShape2D").disabled = false

	if Input.is_action_pressed("ui_cancel"):
		get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
		get_node("/root/Global").posicao_menu(352, 544)

	$Dica.visible_characters = get_node("Botao_Dica").dica_visivel
