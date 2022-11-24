extends StaticBody2D

var btn = false

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	if get_node("../Laser").ligado:
		get_node("/root/Global/LaserSom").stop()
		get_node("/root/Global/LaserDesligandoSom").play()
		get_node("../Laser").desativaColisao()
		get_node("../Laser/Sprite").play("open")

func livre():
	$Sprite.play("up")
	btn = false

func isPressed():
	return btn
