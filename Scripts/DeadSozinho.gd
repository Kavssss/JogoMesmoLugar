extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false

func _physics_process(_delta):
	if morreu:
		if get_node("../PlayerSozinho").motion.x > 0:
			motion.x += 170
		elif get_node("../PlayerSozinho").motion.x < 0:
			motion.x -= 170
		morreu = false
	else:
		motion.y += 15
		if is_on_floor():
			motion.x = 0

	motion = move_and_slide(motion, UP)

func morte(body):
	if body.get_name() == "Laser":
		$Sprite.set_texture(preload("res://Sprites/New player/deadLaser.png"))
	else:
		$Sprite.set_texture(preload("res://Sprites/New player/dead.png"))

	position.x = get_node("../PlayerSozinho").position.x
	position.y = get_node("../PlayerSozinho").position.y
	get_node("../PlayerSozinho").set("morreu", true)
	morreu = true

func _on_Area2D_body_entered(body):
	pressionado()
	if body.has_method("pressionado"):
		body.pressionado()

func _on_Area2D_body_exited(body):
	if body.has_method("livre"):
		body.livre()

func pressionado():
	get_node("../Botao").pressionado()
