extends Area2D

var aberta = false

func _physics_process(delta):
	if aberta:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().quit()

func _on_Creditos_body_entered(body):
	aberta = true
	get_node("../Timer").start(0)
	$Sprite.play("opening")

func _on_Creditos_body_exited(body):
	aberta = false
	get_node("../Timer").start(0)
	$Sprite.play("closing")

func _on_Timer_timeout():
	if aberta:
		$Sprite.play("opened")
	else:
		$Sprite.play("closed")
