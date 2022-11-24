extends Area2D

var aberta = false
var som = true

func _input(event):
	if aberta:
		if Input.is_action_just_pressed("ui_accept"):
			som = false
			get_node("/root/Transition").fade_into("res://Cenas/22-Morse.tscn")
			get_node("/root/Global").posicao = Vector2(1216, 384)

func _on_FaseFinal_body_entered(body):
	aberta = true
	get_node("../Timer").start(0)
	$Sprite.play("opening")
	get_node("/root/Global/Porta").play()

func _on_FaseFinal_body_exited(body):
	aberta = false
	get_node("../Timer").start(0)
	$Sprite.play("closing")
	if som:
		get_node("/root/Global/Porta").play()

func _on_Timer_timeout():
	if aberta:
		$Sprite.play("opened")
	else:
		$Sprite.play("closed")
