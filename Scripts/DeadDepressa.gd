extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morreu = false

func _physics_process(_delta):
	if morreu:
		if get_node("../PlayerDepressa").motion.x > 0:
			motion.x += 170
		elif get_node("../PlayerDepressa").motion.x < 0:
			motion.x -= 170
		morreu = false
	else:
		motion.y += 15
		if is_on_floor():
			motion.x = 0

	motion = move_and_slide(motion, UP)

func morte():
	position.x = get_node("../PlayerDepressa").position.x
	position.y = get_node("../PlayerDepressa").position.y
	get_node("../PlayerDepressa").set("morreu", true)
	morreu = true
