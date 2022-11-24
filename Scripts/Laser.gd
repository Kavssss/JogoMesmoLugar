extends StaticBody2D

var ligado = true

func desativaColisao():
	$CollisionShape2D.disabled = true
	ligado = false
