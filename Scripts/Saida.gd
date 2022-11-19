extends Area2D

func _on_Saida_body_entered(body):
	if get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[0]:
		get_node("/root/Transition").fade_into("res://Cenas/2-Espere.tscn")
		get_node("/root/Global").set("fase", 2)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[1]:
		get_node("/root/Transition").fade_into("res://Cenas/3-CadeOBotao.tscn")
		get_node("/root/Global").set("fase", 3)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[2]:
		get_node("/root/Transition").fade_into("res://Cenas/4-Volte.tscn")
		get_node("/root/Global").set("fase", 4)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[3]:
		get_node("/root/Transition").fade_into("res://Cenas/4-Volte.tscn")
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[4]:
		get_node("/root/Transition").fade_into("res://Cenas/6!.tscn")
		get_node("/root/Global").set("fase", 6)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[5]:
		get_node("/root/Transition").fade_into("res://Cenas/7-Confusao.tscn")
		get_node("/root/Global").set("fase", 7)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[6]:
		get_node("/root/Transition").fade_into("res://Cenas/8-MaisForca.tscn")
		get_node("/root/Global").set("fase", 8)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[7]:
		get_node("/root/Transition").fade_into("res://Cenas/9-Lua.tscn")
		get_node("/root/Global").set("fase", 9)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[8]:
		get_node("/root/Transition").fade_into("res://Cenas/10-Sozinho.tscn")
		get_node("/root/Global").set("fase", 10)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[9]:
		get_node("/root/Transition").fade_into("res://Cenas/11-EncontreOX.tscn")
		get_node("/root/Global").set("fase", 11)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[10]:
		get_node("/root/Transition").fade_into("res://Cenas/12-SigaORato.tscn")
		get_node("/root/Global").set("fase", 12)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[11]:
		get_node("/root/Transition").fade_into("res://Cenas/13-Gravidade.tscn")
		get_node("/root/Global").set("fase", 13)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[12]:
		get_node("/root/Transition").fade_into("res://Cenas/14-AlgoMudou.tscn")
		get_node("/root/Global").set("fase", 14)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[13]:
		get_node("/root/Transition").fade_into("res://Cenas/15-Depressa.tscn")
		get_node("/root/Global").set("fase", 15)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[14]:
		get_node("/root/Transition").fade_into("res://Cenas/16-Zoom.tscn")
		get_node("/root/Global").set("fase", 16)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[15]:
		get_node("/root/Transition").fade_into("res://Cenas/17-Ventania.tscn")
		get_node("/root/Global").set("fase", 17)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[16]:
		get_node("/root/Transition").fade_into("res://Cenas/18-Proxima.tscn")
		get_node("/root/Global").set("fase", 18)
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[17]:
		get_node("/root/Transition").fade_into("res://Cenas/18-Proxima.tscn")
	elif get_tree().get_current_scene().get_name() == get_node("/root/Global").nomes[18]:
		get_node("/root/Transition").fade_into("res://Cenas/19-1.tscn")
		get_node("/root/Global").set("fase", 19)
