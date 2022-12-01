extends Node2D

func _ready():
	$Timer.start()

func _on_Timer_timeout():
	get_node("/root/TransitionFinal").fade_into("res://Cenas/ParteII.tscn")
