extends Node2D

func _ready():
	get_node("/root/Global/Backsound").stop()
	get_node("/root/Global/LaserSom").stop()
