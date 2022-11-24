extends Node2D

func _ready():
	$Botao.visible = false
	$Botao/CollisionPolygon2D.set_deferred("disabled", true)

func _process(delta):
	if get_node("/root/Global").fase == 21:
		$Botao.visible = true
		$Botao/CollisionPolygon2D.set_deferred("disabled", false)

func _on_Voltar_body_entered(body):
	get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
	get_node("/root/Global").posicao_menu(1184, 384)
