extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false
var parado = false

func _physics_process(_delta):
	if !parado:
		motion.y += 20

		if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
			motion.x = 170
			$Sprite.play("walk")
			$Sprite.flip_h = false
		elif Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
			motion.x = -170
			$Sprite.play("walk")
			$Sprite.flip_h = true
		else:
			motion.x = 0
			$Sprite.play("idle")

		if is_on_floor():
			if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
				motion.y = -520

		if morreu:
			if get_tree().get_current_scene().get_name() == "Menu":
				position.x = 96
				position.y = 544
			elif get_tree().get_current_scene().get_name() == "Niveis":
				position.x = 32
				position.y = 160
			morreu = false

		motion = move_and_slide(motion, UP)

func _on_Foot_body_entered(body):
	if body.has_method("pressionado"):
		body.pressionado()

func _on_Foot_body_exited(body):
	if body.has_method("livre"):
		body.livre()

func _on_Limit_body_entered(body):
	get_node("/root/Global/MorteSom").play()
	get_node("/root/Global").mortes += 1
	get_node("../DeadMenu").morte(body)
