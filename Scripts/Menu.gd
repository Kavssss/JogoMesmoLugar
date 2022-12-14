extends Node2D

func _ready():
	get_node("/root/Global").esc = false
	if get_node("/root/Global").musica:
		get_node("/root/Global/Backsound").play()
	$UserSenha.visible = false
	get_node("PlayerMenu").position = get_node("/root/Global").posicao
	$Dicas_restantes.text = "Dicas restantes: " + str(get_node("/root/Global").dicas)
	$Mortes.text = "Mortes: " + str(get_node("/root/Global").mortes)

	if !get_node("/root/Global").laserMenu:
		$Laser/CollisionShape2D.set_deferred("disabled", true)
		$Laser.visible = false
	else:
		get_node("/root/Global/LaserSom").play()

	if !$Elevador/Timer.is_stopped():
		yield(get_tree().create_timer(4), "timeout")
		get_node("/root/TransitionFinal").fade_into("res://Cenas/ParteII.tscn")
