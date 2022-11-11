extends Node2D

var resultado = ""
	
func _input(event):
	if event is InputEventKey:
		if event.echo == false:
			if !char(event.scancode) in "wasdWASD":
				if event.scancode >= 16777350 and event.scancode <= 16777359:
					resultado += str(event.scancode)[-1]
				else:
					resultado += char(event.scancode)

func _physics_process(_delta):
	if "772200" in resultado:
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()
