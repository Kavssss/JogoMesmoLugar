extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false
var cont = 0

func _ready():
	position.x = 30
	position.y = 380
	get_viewport().warp_mouse(Vector2(40, 410))

func _physics_process(_delta):
	motion.y += 20

	if get_viewport().get_mouse_position().x > position.x + 16:
		motion.x = 100
		$Sprite.play("walk")
		$Sprite.flip_h = false
	elif get_viewport().get_mouse_position().x < position.x - 16:
		motion.x = -100
		$Sprite.play("walk")
		$Sprite.flip_h = true
	else:
		motion.x = 0
		$Sprite.play("idle")

	if get_viewport().get_mouse_position().y > position.y + 16:
		motion.y = 70
	elif get_viewport().get_mouse_position().y < position.y:
		motion.y = -70
	else:
		motion.y = 0

	if morreu:
		position.x = 30
		position.y = 380
		morreu = false

	motion = move_and_slide(motion, UP)

func _on_Press_body_entered(body):
	if body.has_method("pressionado"):
		body.pressionado()

func _on_Press_body_exited(body):
	if body.has_method("livre"):
		body.livre()

func _on_Limit_body_entered(body):
	get_node("../Dead").morte()
