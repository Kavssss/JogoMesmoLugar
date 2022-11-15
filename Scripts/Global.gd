extends Node2D

var fase = 1

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func nome_fase():
	if fase == 1:
		return "1-Simples"
	elif fase == 2:
		return "2-Espere"
	elif fase == 3:
		return "3-CadeOBotao"
	elif fase == 4:
		return "4-Volte"
	elif fase == 5:
		return "5-PrecisoDeEspaco"
	elif fase == 6:
		return "6!"
	elif fase == 7:
		return "7-Confusao"
	elif fase == 8:
		return "8MaisForca"
	elif fase == 9:
		return "9-Lua"
	elif fase == 10:
		return "10-Sozinho"
	elif fase == 11:
		return "11-EncontreOX"
	elif fase == 12:
		return "12-SigaORato"
	elif fase == 13:
		return "13-PorcoAranha"
	elif fase == 14:
		return "14-AlgoMudou"
	elif fase == 15:
		return "15-Depressa"
