extends Node2D

var posX = 352
var posY = 64
var cont = 0

func laser():
	return get_node("/root/Global").laser

func _process(delta):
	cont += 1
	if cont % 100 == 0:
		print("laser: ", laser())
		print("fase: ", get_node("/root/Global").fase)

	if get_node("/root/Global").fase > laser():
		get_node("/root/Global").set("laser", get_node("/root/Global").fase)

	if laser() == 1:
		get_node("laser").position = Vector2(posX, posY)
	elif laser() == 2:
		get_node("Laser").position = Vector2(posX + 128, posY)
	elif laser() == 3:
		get_node("Laser").position = Vector2(posX + (128 * 2), posY)
	elif laser() == 4:
		get_node("Laser").position = Vector2(posX + (128 * 3), posY)
	elif laser() == 5:
		get_node("Laser").position = Vector2(posX + (128 * 4), posY)
	elif laser() == 6:
		get_node("Laser").position = Vector2(posX + (128 * 5), posY)
	elif laser() == 7:
		get_node("Laser").position = Vector2(posX + (128 * 6), posY)
	elif laser() == 8:
		get_node("Laser").position = Vector2(posX + (128 * 5), posY + 224)
	elif laser() == 9:
		get_node("Laser").position = Vector2(posX + (128 * 4), posY + 224)
	elif laser() == 10:
		get_node("Laser").position = Vector2(posX + (128 * 3), posY + 224)
	elif laser() == 11:
		get_node("Laser").position = Vector2(posX + (128 * 2), posY + 224)
	elif laser() == 12:
		get_node("Laser").position = Vector2(posX + 128, posY + 224)
	elif laser() == 13:
		get_node("Laser").position = Vector2(posX, posY + 224)
	elif laser() == 14:
		get_node("Laser").position = Vector2(posX - 128, posY + (224 * 2))
	elif laser() == 15:
		get_node("Laser").position = Vector2(posX, posY + (224 * 2))
	elif laser() == 16:
		get_node("Laser").position = Vector2(posX + 128, posY + (224 * 2))
	elif laser() == 17:
		get_node("Laser").position = Vector2(posX + (128 * 2), posY + (224 * 2))
	elif laser() == 18 or laser() == 19:
		get_node("Laser").position = Vector2(posX + (128 * 4), posY + (224 * 2))
	elif laser() == 20:
		get_node("Laser").position = Vector2(posX + (128 * 5), posY + (224 * 2))
	elif laser() == 21:
		get_node("Laser").position = Vector2(posX + (128 * 6), posY + (224 * 2))
	else:
		get_node("Laser").hide()
		get_node("Laser/CollisionShape2D").disabled = true

func _on_Voltar_body_entered(body):
	get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
	get_node("/root/Global").posicao_menu(576, 544)
	
