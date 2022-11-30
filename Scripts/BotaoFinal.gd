extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	get_node("/root/Global/LaserDesligandoSom").volume_db = -30
	get_node("/root/Global/LaserSom").stop()
	if get_node("/root/Global").laserMenu:
		get_node("/root/Global/LaserDesligandoSom").play()
	get_node("/root/Global").laserMenu = false

func livre():
	$Sprite.play("up")
