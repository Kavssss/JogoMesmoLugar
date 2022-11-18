extends Node2D

var dicas = 3
var posicao = Vector2(32, 544)
var fase = 17
var fase_atual = 25
var nomes = ["1-Simples", "2-Espere", "3-CadeOBotao", "4-Volte", "5-PrecisoDeEspaco", "6!", 
			"7-Confusao", "8-MaisForca", "9-Lua", "10-Sozinho", "11-EncontreOX", "12-SigaORato", 
			"13-PorcoAranha", "14-AlgoMudou", "15-Depressa", "16-Zoom", "17-Ventania", "18-Proxima", 
			"19-1"]

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func nome_fase():
	return nomes[fase - 1]

func posicao_menu(x, y):
	posicao = Vector2(x, y)

func _input(event):
	if get_tree().get_current_scene().get_name() != "19-1":
		if Input.is_key_pressed(KEY_P): 
			get_tree().paused = !get_tree().paused
