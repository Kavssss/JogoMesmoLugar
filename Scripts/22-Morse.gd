extends Node2D

func _ready():
	if !get_node("/root/Global").laserMenu:
		$Player.position = get_node("/root/Global").posicao
		if $Player.position.x > 1200:
			$Player/Sprite.flip_h = true

func _physics_process(_delta):
	if get_node("Botao").isPressed():
		get_node("/root/Global").laserMenu = false

	if Input.is_action_pressed("ui_cancel"):
		get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
		get_node("/root/Global").posicao_menu(352, 544)

	$Dica.visible_characters = get_node("Botao_Dica").dica_visivel
