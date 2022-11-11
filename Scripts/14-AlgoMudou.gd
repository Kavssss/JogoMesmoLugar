extends Node2D

func _physics_process(_delta):
	if get_node("Botao").isPressed():
		get_node("Laser").desativaColisao()
