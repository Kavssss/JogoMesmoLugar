extends Node2D

func _ready():
	get_node("/root/Global/Backsound").stop()
	get_node("/root/Global/LaserSom").volume_db = -40
	get_node("/root/Global/LaserSom").play()
	get_node("/root/Global").set("musica", false)
