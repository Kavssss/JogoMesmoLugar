extends Area2D

func _on_Saida_body_entered(body):
	if get_tree().get_current_scene().get_name() == "1-Simples":
		get_tree().change_scene("res://Cenas/2-Espere.tscn")
	elif get_tree().get_current_scene().get_name() == "2-Espere":
		get_tree().change_scene("res://Cenas/3-CadeOBotao.tscn")
	elif get_tree().get_current_scene().get_name() == "3-CadeOBotao":
		get_tree().change_scene("res://Cenas/4-Volte.tscn")
	elif get_tree().get_current_scene().get_name() == "4-Volte":
		get_tree().change_scene("res://Cenas/4-Volte.tscn")
	elif get_tree().get_current_scene().get_name() == "5-PrecisoDeEspaco":
		get_tree().change_scene("res://Cenas/6!.tscn")
	elif get_tree().get_current_scene().get_name() == "6!":
		get_tree().change_scene("res://Cenas/7-Confusao.tscn")
	elif get_tree().get_current_scene().get_name() == "7-Confusao":
		get_tree().change_scene("res://Cenas/8-MaisForca.tscn")
	elif get_tree().get_current_scene().get_name() == "8-MaisForca":
		get_tree().change_scene("res://Cenas/9-Lua.tscn")
