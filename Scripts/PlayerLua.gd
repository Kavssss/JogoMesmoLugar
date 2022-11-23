extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false
var cont = 0

func _ready():
	position.x = 30
	position.y = 380

func _physics_process(_delta):
	motion.y += 1

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
		position.x = 30
		position.y = 380
		morreu = false

	motion = move_and_slide(motion, UP)
	queda()

func queda():
	return motion.y

func _on_Press_body_entered(body):
	if body.has_method("pressionado"):
		body.pressionado()

func _on_Press_body_exited(body):
	if body.has_method("livre"):
		body.livre()

func _on_Limit_body_entered(body):
	get_node("../Dead").morte()
