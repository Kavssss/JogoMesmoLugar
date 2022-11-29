extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	get_node("/root/Global").laserMenu = false
	get_node("/root/Global/LaserDesligandoSom").volume_db = -20
	get_node("/root/Global/LaserSom").stop()
	get_node("/root/Global/LaserDesligandoSom").play()

func livre():
	$Sprite.play("up")
