extends StaticBody2D

var dica_visivel = 0

func pressionado():
	$Sprite.play("down")
	get_node("/root/Global/BotaoSom").play()
	if get_node("/root/Global").dicas > 0:
		get_node("/root/Global").dicas -= 1
		get_node("../Dica").visible_characters = -1
	else:
		get_node("../Dica").text = "Acabaram as dicas, se vira"
		get_node("../Dica").visible_characters = -1

func livre():
	$Sprite.play("up")
