extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	get_node("../Laser").desliga()

func livre():
	$Sprite.play("up")
	get_node("../Laser").liga()
