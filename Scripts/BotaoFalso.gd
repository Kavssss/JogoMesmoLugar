extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()

func livre():
	$Sprite.play("up")
