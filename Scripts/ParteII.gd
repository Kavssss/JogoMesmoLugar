extends Node2D

func _ready():
	$Timer.start()

func _on_Timer_timeout():
	get_node("/root/Global/ElevadorAndando").stop()
	get_node("/root/Global/Elevador").play()
	$SpriteParteII.play("default")
