extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false

func _physics_process(_delta):
	if morreu:
		if get_node("../PlayerVentania").motion.x > 0:
			motion.x += 170
		elif get_node("../PlayerVentania").motion.x < 0:
			motion.x -= 170
		morreu = false
	else:
		motion.y += 15
		if is_on_floor():
			motion.x = 0

	motion = move_and_slide(motion, UP)

func morte(body):
	if body.get_name() == "Laser":
		$Sprite.set_texture(preload("res://Sprites/New Player/deadLaser.png"))
	else:
		$Sprite.set_texture(preload("res://Sprites/New Player/dead.png"))

	position.x = get_node("../PlayerVentania").position.x
	position.y = get_node("../PlayerVentania").position.y
	get_node("../PlayerVentania").set("morreu", true)
	morreu = true
