extends Node2D

var posX = 352
var posY = 64

func _process(delta):
	if get_node("/root/Global").get("fase") == 1:
		get_node("Laser").position = Vector2(posX, posY)
	elif get_node("/root/Global").get("fase") == 2:
		get_node("Laser").position = Vector2(posX + 128, posY)
	elif get_node("/root/Global").get("fase") == 3:
		get_node("Laser").position = Vector2(posX + (128 * 2), posY)
	elif get_node("/root/Global").get("fase") == 4:
		get_node("Laser").position = Vector2(posX + (128 * 3), posY)
	elif get_node("/root/Global").get("fase") == 5:
		get_node("Laser").position = Vector2(posX + (128 * 4), posY)
	elif get_node("/root/Global").get("fase") == 6:
		get_node("Laser").position = Vector2(posX + (128 * 5), posY)
	elif get_node("/root/Global").get("fase") == 7:
		get_node("Laser").position = Vector2(posX + (128 * 6), posY)
	elif get_node("/root/Global").get("fase") == 8:
		get_node("Laser").position = Vector2(posX + (128 * 5), posY + 224)
	elif get_node("/root/Global").get("fase") == 9:
		get_node("Laser").position = Vector2(posX + (128 * 4), posY + 224)
	elif get_node("/root/Global").get("fase") == 10:
		get_node("Laser").position = Vector2(posX + (128 * 3), posY + 224)
	elif get_node("/root/Global").get("fase") == 11:
		get_node("Laser").position = Vector2(posX + (128 * 2), posY + 224)
	elif get_node("/root/Global").get("fase") == 12:
		get_node("Laser").position = Vector2(posX + 128, posY + 224)
	elif get_node("/root/Global").get("fase") == 13:
		get_node("Laser").position = Vector2(posX, posY + 224)
	elif get_node("/root/Global").get("fase") == 14:
		get_node("Laser").position = Vector2(posX - 128, posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 15:
		get_node("Laser").position = Vector2(posX, posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 16:
		get_node("Laser").position = Vector2(posX + 128, posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 17:
		get_node("Laser").position = Vector2(posX + (128 * 2), posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 18:
		get_node("Laser").position = Vector2(posX + (128 * 3), posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 19:
		get_node("Laser").position = Vector2(posX + (128 * 4), posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 20:
		get_node("Laser").position = Vector2(posX + (128 * 5), posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 21:
		get_node("Laser").position = Vector2(posX + (128 * 6), posY + (224 * 2))
	elif get_node("/root/Global").get("fase") == 22:
		get_node("Laser").position = Vector2(posX + (128 * 7), posY + (224 * 2))

func _on_Voltar_body_entered(body):
	get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
