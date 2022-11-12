extends Node2D

func _physics_process(_delta):
	if get_node("X").aberto:
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()
