extends StaticBody2D

func _ready():
	som()

func som():
	get_node("/root/Global/LaserSom").play()

func desliga():
	$Sprite.play("open")
	$CollisionShape2D.set_deferred("disabled", true)
	get_node("/root/Global/LaserSom").stop()
	get_node("/root/Global/LaserDesligandoSom").play()
