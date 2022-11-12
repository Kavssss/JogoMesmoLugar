extends Area2D

func _on_Entrada_body_entered(body):
	if(get_tree().get_current_scene().get_name() == "4-Volte"):
		get_node("/root/Global").set("fase", 5)
		get_tree().change_scene("res://Cenas/5-PrecisoDeEspaco.tscn")
