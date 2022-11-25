extends StaticBody2D

func _ready():
	get_node("/root/Global/LaserSom").play()

func desliga():
	$Sprite.play("open")
	$CollisionShape2D.set_deferred("disabled", true)
	get_node("/root/Global/LaserSom").stop()
	get_node("/root/Global/LaserDesligandoSom").play()

func liga():
	$Sprite.play("close")
	get_node("/root/Global/LaserLigandoSom").play()
	yield(get_tree().create_timer(0.3), "timeout")
	$Sprite.play("closed")
	$CollisionShape2D.set_deferred("disabled", false)
	get_node("/root/Global/LaserSom").play()
