extends StaticBody2D

var dica_visivel = 0

func pressionado():
	$Sprite.play("down")
	if get_node("/root/Global").dicas > 0:
		get_node("/root/Global").dicas -= 1
		dica_visivel = -1

func livre():
	$Sprite.play("up")
