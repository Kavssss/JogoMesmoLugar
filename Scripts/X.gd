extends Area2D

func _on_X_body_entered(body):
	get_node("../Titulo").text = "11- Encontre o"
	get_node("../Laser").desliga()
