extends StaticBody2D

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	if Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S):
		get_node("../Laser").desliga()

func livre():
	$Sprite.play("up")
