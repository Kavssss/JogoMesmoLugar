extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false
var cont = 0

func _ready():
	position.x = 30
	position.y = 380

func _physics_process(_delta):
	$Sprite.play("walk")
	motion.x = 70

	if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
		$Sprite.flip_v = true
	elif Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S):
		$Sprite.flip_v = false
	
	if $Sprite.flip_v:
		motion.y -= 15
	else:
		motion.y += 15

	if morreu:
		position.x = 30
		position.y = 380
		morreu = false

	motion = move_and_slide(motion, UP)

func _on_Foot_body_entered(body):
	if body.has_method("pressionado"):
		body.pressionado()

func _on_Foot_body_exited(body):
	if body.has_method("livre"):
		body.livre()

func _on_Limit_body_entered(body):
	get_node("../Dead").morte()
