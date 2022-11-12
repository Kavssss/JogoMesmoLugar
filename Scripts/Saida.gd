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
	elif get_tree().get_current_scene().get_name() == "9-Lua":
		get_tree().change_scene("res://Cenas/10-Sozinho.tscn")
	elif get_tree().get_current_scene().get_name() == "10-Sozinho":
		get_tree().change_scene("res://Cenas/11-EncontreOX.tscn")
	elif get_tree().get_current_scene().get_name() == "11-EncontreOX":
		get_tree().change_scene("res://Cenas/12-SigaORato.tscn")
	elif get_tree().get_current_scene().get_name() == "12-SigaORato":
		get_tree().change_scene("res://Cenas/13-PorcoAranha.tscn")
	elif get_tree().get_current_scene().get_name() == "13-PorcoAranha":
		get_tree().change_scene("res://Cenas/14-AlgoMudou.tscn")
	elif get_tree().get_current_scene().get_name() == "14-AlgoMudou":
		get_tree().change_scene("res://Cenas/15-Depressa.tscn")
