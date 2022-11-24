extends Node2D

var posX = [0, 352, 480, 608, 736, 864, 992, 1120, 992, 864, 736, 608, 480, 352, 224, 352, 
480, 608, 864, 864, 992, 1120]
var posY = [0, 64, 64, 64, 64, 64, 64, 288, 288, 288, 288, 288, 288, 288, 512, 512, 512, 
512, 512, 512, 512, 512]

func _process(delta):
	if fase() > laser():
		get_node("/root/Global").set("laser", fase())
	if laser() != 22:
		$Laser.position = Vector2(posX[laser()], posY[laser()])
	else:
		get_node("Laser").hide()
		get_node("Laser/CollisionShape2D").set_deferred("disabled", true)

func fase():
	return get_node("/root/Global").fase

func laser():
	return get_node("/root/Global").laser

func _on_Voltar_body_entered(body):
	get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
	get_node("/root/Global").posicao_menu(544, 544)
