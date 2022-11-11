extends Area2D

func _on_X_body_entered(body):
	get_node("../Label").text = "11- Encontre o"
	get_node("../Laser/Sprite").play("open")
	get_node("../Laser").desativaColisao()
