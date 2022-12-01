extends Area2D

func _on_Entrada_body_entered(body):
	if get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[3]:
		get_node("/root/Transition").fade_into("res://Cenas/5-PrecisoDeEspaco.tscn")
		get_node("/root/Global").set("fase", 5)
