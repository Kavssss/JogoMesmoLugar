extends Node2D

func _ready():
	get_node("PlayerMenu").position = get_node("/root/Global").posicao
