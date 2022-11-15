extends StaticBody2D

func pressionado():
	$Sprite.play("down")

func livre():
	$Sprite.play("up")
