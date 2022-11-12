extends StaticBody2D

var btn = false

func pressionado():
	$Sprite.play("down")
	btn = true

func livre():
	$Sprite.play("up")
	btn = false

func isPressed():
	return btn
