extends Area2D

var noElevador = false

func _input(event):
	if noElevador:
		if Input.is_action_just_released("ui_accept"):
			get_node("/root/Global/ElevadorPorta").play()
			get_node("/root/Global/ElevadorAndando").play()
			$Sprite2.play("fechando_player")
			get_node("../PlayerMenu").parado = true
			$Timer.start()

func _on_Elevador_body_entered(body):
	noElevador = true

func _on_Elevador_body_exited(body):
	noElevador = false

func _on_Timer_timeout():
	# $Sprite.play("andar")
	# get_node("/root/Global/ElevadorAndando").stop()
	# get_node("/root/Global/Elevador").play()
	get_node("/root/TransitionFinal").fade_into("res://Cenas/ParteII.tscn")
