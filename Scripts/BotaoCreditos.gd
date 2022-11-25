extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	get_node("/root/Global").botaoCreditos = true

func livre():
	$Sprite.play("up")
