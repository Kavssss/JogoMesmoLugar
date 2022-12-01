extends Node2D

func _ready():
	$Timer.start()

func _on_Timer_timeout():
	$SpriteParteII.play("default")
