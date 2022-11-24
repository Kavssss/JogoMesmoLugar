extends Node2D

func _physics_process(_delta):
	if get_node("Botao").isPressed():
		if $Timer.is_stopped():
			$Timer.start(0)
	else:
		$Timer.stop()

func _on_Timer_timeout():
	get_node("Laser/Sprite").play("open")
	get_node("Laser").desativaColisao()
