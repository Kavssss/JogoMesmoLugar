extends Node2D

func _ready():
	if get_node("/root/Global").botaoCreditos:
		get_node("Laser").desliga()
	else:
		get_node("/root/Global/LaserSom").play()
