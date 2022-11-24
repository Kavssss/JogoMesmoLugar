extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	if $Timer.is_stopped():
		$Timer.start(0)

func livre():
	$Sprite.play("up")
	$Timer.stop()

func _on_Timer_timeout():
	get_node("../Laser/Sprite").play("open")
	get_node("../Laser").desliga()
	get_node("/root/Global/LaserSom").stop()
	get_node("/root/Global/LaserDesligandoSom").play()
