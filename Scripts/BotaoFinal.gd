extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	get_node("/root/Global").laserMenu = false

func livre():
	$Sprite.play("up")
