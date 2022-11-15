extends Node2D

func _physics_process(_delta):
	if get_node("Botao").isPressed():
		get_node("Laser/Sprite").play("open")
		get_node("Laser/CollisionShape2D").disabled = true
	else:
		get_node("Laser/Sprite").play("closed")
		get_node("Laser/CollisionShape2D").disabled = false
		
