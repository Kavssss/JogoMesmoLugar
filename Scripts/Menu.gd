extends Node2D

func _ready():
	$UserSenha.visible = false
	get_node("PlayerMenu").position = get_node("/root/Global").posicao
	$Dicas_restantes.text = "Dicas restantes: " + str(get_node("/root/Global").dicas)
