extends Area2D

var aberto = false

func _on_X_body_entered(body):
	get_node("../Label").text = "11- Encontre o"
	aberto = true
