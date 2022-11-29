extends Node2D

var botaoCreditos = false
var laserMenu = true
var musica = true
var dicas = 3
var mortes = 0
var pause = true
var esc = true
var posicao = Vector2(32, 544)
var laser = 1
var fase = 1
var nomes = ["1-Simples", "2-Espere", "3-CadeOBotao", "4-Volte", "5-PrecisoDeEspaco", "6!", 
			"7-Confusao", "8-MaisForca", "9-Lua", "10-Sozinho", "11-EncontreOX", "12-SigaORato", 
			"13-Gravidade", "14-AlgoMudou", "15-Depressa", "16-Zoom", "17-Ventania", "18-Proxima", 
			"19-1", "20-Cuidado", "21-NaoEstaAqui", "22-Morse"]

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func nome_fase():
	return nomes[fase - 1]

func posicao_menu(x, y):
	posicao = Vector2(x, y)

func _input(event):
	if Input.is_key_pressed(KEY_P):
		if pause:
			get_tree().paused = !get_tree().paused
			if !get_tree().paused:
				$Backsound.volume_db /= 2
				$LaserSom.volume_db /= 2
			else:
				$Backsound.volume_db *= 2
				$LaserSom.volume_db *= 2

	if Input.is_action_pressed("ui_cancel"):
		if esc:
			get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
			posicao = Vector2(320, 544)
