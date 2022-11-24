extends Node2D

func _ready():
	get_node("Laser/CollisionShape2D").set_deferred("disabled", true)
