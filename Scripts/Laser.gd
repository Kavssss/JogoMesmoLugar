extends StaticBody2D

var ligado = true

func som():
	if ligado:
		get_node("/root/Global/LaserSom").play()

func desativaColisao():
	$CollisionShape2D.disabled = true
	ligado = false
