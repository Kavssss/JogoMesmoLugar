extends Node2D

var posX = 352
var posY = 64

func _process(delta):
	if get_node("/root/Global").get("fase") == 1:
		get_node("Laser").position = Vector2(posX, posY)
	elif get_node("/root/Global").get("fase") == 2:
		get_node("Laser").position = Vector2(posX + 128, posY)
		
		
