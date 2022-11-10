extends Node2D

var cont = 0

func _physics_process(_delta):
	if get_node("Botao").isPressed():
		cont += 1
		if(cont > 250):
			get_node("Laser/Sprite").play("open")
			get_node("Laser").desativaColisao()
	else:
		cont = 0
