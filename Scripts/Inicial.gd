extends Node2D

func _ready():
	$Timer.start(0)

func _on_Timer_timeout():
	# if Input.is_action_pressed("ui_accept"):
	get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
