extends StaticBody2D

var btn = false

func _ready():
	get_node("../Laser").som()

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()

	if get_node("../Laser").ligado:
		get_node("../Laser/Sprite").play("open")
		get_node("../Laser").desativaColisao()
		get_node("/root/Global/LaserSom").stop()
		get_node("/root/Global/LaserDesligandoSom").play()

func livre():
	$Sprite.play("up")

func isPressed():
	return btn
