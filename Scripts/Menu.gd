extends Node2D

func _ready():
	$UserSenha.visible = false
	get_node("PlayerMenu").position = get_node("/root/Global").posicao
	$Dicas_restantes.text = "Dicas restantes: " + str(get_node("/root/Global").dicas)
	$Mortes.text = "Mortes: " + str(get_node("/root/Global").mortes)

func _process(delta):
	if !get_node("/root/Global").laserMenu:
		$Laser/Sprite.play("desligado")
		$Laser/CollisionShape2D.disabled = true

	if !$Elevador/Timer.is_stopped():
		yield(get_tree().create_timer(4), "timeout")
		get_node("/root/TransitionFinal").fade_into("res://Cenas/Final.tscn")
