extends Node2D

var resultado = ""
var feito = false

func _ready():
	get_node("/root/Global").pause = false

func _input(event):
	if !feito:
		if event is InputEventKey:
			if !char(event.scancode) in "wadWAD":
				resultado += char(event.scancode)
	if "SSIIMMPPLLEESS" in resultado:
		$Titulo.text = "19- \"1- Simples\""
		get_node("Laser").desliga()
		resultado = ""
		feito = true
