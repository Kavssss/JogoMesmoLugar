extends Node2D

var resultado = ""
	
func _input(event):
	if event is InputEventKey:
		if event.echo == false:
			if(!char(event.scancode) in "wasdWASD"):
				resultado += char(event.scancode)

func _physics_process(_delta):
	if("772200" in resultado):
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()
