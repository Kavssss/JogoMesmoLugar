extends StaticBody2D

var btn = false

func pressionado():
	$Sprite.play("down")
	btn = true
	get_node("/root/Global/Laser_desligando").play()

func livre():
	$Sprite.play("up")
	btn = false

func isPressed():
	return btn
