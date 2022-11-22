extends KinematicBody2D

var motion = Vector2()
var posicao_inicial = [320, 288, 576, 928, 896, 544, 576]
var posicao_final = [416, 448, 768, 1024, 1056, 800, 832]

func _physics_process(delta):
	print(posicao_final)
	if get_node("0").position.x >= posicao_final[0]:
		motion.x = -100
	elif get_node("0").position.x <= posicao_inicial[0]:
		motion.x = 100
	
	motion = move_and_slide(motion)
