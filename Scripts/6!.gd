extends Node2D

var resultado = ""
var feito = false

func _input(event):
	if !feito:
		if event is InputEventKey:
			if !char(event.scancode) in "wasdWASD":
				if event.scancode >= 16777350 and event.scancode <= 16777359:
					resultado += str(event.scancode)[-1]
				else:
					resultado += char(event.scancode)
	if "772200" in resultado:
		get_node("Laser").desliga()
		resultado = ""
		feito = true
