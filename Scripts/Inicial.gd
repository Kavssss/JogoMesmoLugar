extends Node2D

func _ready():
	$SpritePressione.play("desligado")

func _on_Timer_timeout():
	$SpritePressione.play("ligado")

func _process(delta):
	if $Timer.is_stopped():
		if Input.is_action_pressed("ui_accept"):
			get_node("/root/Transition").fade_into("res://Cenas/Menu.tscn")
