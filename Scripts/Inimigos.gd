extends Node

var posicao_inicial = [320, 288, 576, 928, 896, 544, 576]
var posicao_final = [416, 448, 768, 1024, 1056, 800, 832]
var direcao = [1, 1, 1, 1, 1, 1, 1]

func _physics_process(delta):
	for i in range (0, 7):
		if get_node(str(i)).position.x >= posicao_final[i]:
			direcao[i] = 0
		elif get_node(str(i)).position.x <= posicao_inicial[i]:
			direcao[i] = 1

		if direcao[i] == 1:
			get_node(str(i)).position.x += rand_range(2, 3)
		elif direcao[i] == 0:
			get_node(str(i)).position.x -= rand_range(2, 3)
