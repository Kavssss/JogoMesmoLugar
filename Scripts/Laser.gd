extends StaticBody2D

func _ready():
	if get_tree().get_current_scene().get_name() != "21-NaoEstaAqui":
		get_node("/root/Global/LaserSom").play()

func desliga():
	if !$CollisionShape2D.disabled:
		$Sprite.play("open")
		$CollisionShape2D.set_deferred("disabled", true)
		get_node("/root/Global/LaserSom").stop()
		get_node("/root/Global/LaserDesligandoSom").play()
