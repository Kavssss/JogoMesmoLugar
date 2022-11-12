extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false

func _physics_process(_delta):
	if morreu:
		if get_node("../PlayerMenu").motion.x > 0:
			motion.x += 170
		elif get_node("../PlayerMenu").motion.x < 0:
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

	position.x = get_node("../PlayerMenu").position.x
	position.y = get_node("../PlayerMenu").position.y
	get_node("../PlayerMenu").set("morreu", true)
	morreu = true
