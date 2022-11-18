extends Area2D

func _on_Saida_body_entered(body):
	if get_node("/root/Global").fase_atual >= get_node("/root/Global").fase:
		if get_node("/root/Global").get("fase") == 1:
			get_node("/root/Transition").fade_into("res://Cenas/2-Espere.tscn")
			get_node("/root/Global").set("fase", 2)
		elif get_node("/root/Global").get("fase") == 2:
			get_node("/root/Transition").fade_into("res://Cenas/3-CadeOBotao.tscn")
			get_node("/root/Global").set("fase", 3)
		elif get_node("/root/Global").get("fase") == 3:
			get_node("/root/Transition").fade_into("res://Cenas/4-Volte.tscn")
			get_node("/root/Global").set("fase", 4)
		elif get_node("/root/Global").get("fase") == 4:
			get_node("/root/Transition").fade_into("res://Cenas/4-Volte.tscn")
		elif get_node("/root/Global").get("fase") == 5:
			get_node("/root/Transition").fade_into("res://Cenas/6!.tscn")
			get_node("/root/Global").set("fase", 6)
		elif get_node("/root/Global").get("fase") == 6:
			get_node("/root/Transition").fade_into("res://Cenas/7-Confusao.tscn")
			get_node("/root/Global").set("fase", 7)
		elif get_node("/root/Global").get("fase") == 7:
			get_node("/root/Transition").fade_into("res://Cenas/8-MaisForca.tscn")
			get_node("/root/Global").set("fase", 8)
		elif get_node("/root/Global").get("fase") == 8:
			get_node("/root/Transition").fade_into("res://Cenas/9-Lua.tscn")
			get_node("/root/Global").set("fase", 9)
		elif get_node("/root/Global").get("fase") == 9:
			get_node("/root/Transition").fade_into("res://Cenas/10-Sozinho.tscn")
			get_node("/root/Global").set("fase", 10)
		elif get_node("/root/Global").get("fase") == 10:
			get_node("/root/Transition").fade_into("res://Cenas/11-EncontreOX.tscn")
			get_node("/root/Global").set("fase", 11)
		elif get_node("/root/Global").get("fase") == 11:
			get_node("/root/Transition").fade_into("res://Cenas/12-SigaORato.tscn")
			get_node("/root/Global").set("fase", 12)
		elif get_node("/root/Global").get("fase") == 12:
			get_node("/root/Transition").fade_into("res://Cenas/13-PorcoAranha.tscn")
			get_node("/root/Global").set("fase", 13)
		elif get_node("/root/Global").get("fase") == 13:
			get_node("/root/Transition").fade_into("res://Cenas/14-AlgoMudou.tscn")
			get_node("/root/Global").set("fase", 14)
		elif get_node("/root/Global").get("fase") == 14:
			get_node("/root/Transition").fade_into("res://Cenas/15-Depressa.tscn")
			get_node("/root/Global").set("fase", 15)
		elif get_node("/root/Global").get("fase") == 15:
			get_node("/root/Transition").fade_into("res://Cenas/16-Zoom.tscn")
			get_node("/root/Global").set("fase", 16)
		elif get_node("/root/Global").get("fase") == 16:
			get_node("/root/Transition").fade_into("res://Cenas/17-Ventania.tscn")
			get_node("/root/Global").set("fase", 17)
		elif get_node("/root/Global").get("fase") == 17:
			get_node("/root/Transition").fade_into("res://Cenas/18-Proxima.tscn")
			get_node("/root/Global").set("fase", 18)
		elif get_node("/root/Global").get("fase") == 18:
			get_node("/root/Transition").fade_into("res://Cenas/18-Proxima.tscn")
		elif get_node("/root/Global").get("fase") == 18:
			get_node("/root/Transition").fade_into("res://Cenas/19-1.tscn")
			get_node("/root/Global").set("fase", 19)
	else:
		get_node("/root/Transition").fade_into("res://Cenas/" + get_node("/root/Global").nomes[get_node("/root/Global").fase_atual] + ".tscn")
		get_node("/root/Global").fase_atual += 1
