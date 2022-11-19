extends Area2D

var noElevador = false

func _process(delta):
	if noElevador:
		if Input.is_action_pressed("ui_accept"):
			$Sprite2.play("fechando_player")
			$Timer.start()
			get_node("../PlayerMenu").parado = true
			print(get_node("../PlayerMenu").parado)

func _on_Elevador_body_entered(body):
	noElevador = true

func _on_Elevador_body_exited(body):
	noElevador = false

func _on_Timer_timeout():
	$Sprite.play("andar")
