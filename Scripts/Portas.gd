extends Node

var aberta = false
var porta = ""

func _physics_process(_delta):
	if aberta:
		if Input.is_action_just_pressed("ui_accept"):
			get_node("/root/Transition").fade_into(porta)

func _on_Porta1_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 1)
	porta = "res://Cenas/1-Simples.tscn"
	$Porta1/Sprite.play("opening")

func _on_Porta1_body_exited(body):
	aberta = false
	$Porta1/Sprite.play("closing")

func _on_Porta2_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 2)
	porta = "res://Cenas/2-Espere.tscn"
	$Porta2/Sprite.play("opening")

func _on_Porta2_body_exited(body):
	aberta = false
	$Porta2/Sprite.play("closing")

func _on_Porta3_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 3)
	porta = "res://Cenas/3-CadeOBotao.tscn"
	$Porta3/Sprite.play("opening")

func _on_Porta3_body_exited(body):
	aberta = false
	$Porta3/Sprite.play("closing")

func _on_Porta4_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 4)
	porta = "res://Cenas/4-Volte.tscn"
	$Porta4/Sprite.play("opening")

func _on_Porta4_body_exited(body):
	aberta = false
	$Porta4/Sprite.play("closing")

func _on_Porta5_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 5)
	porta = "res://Cenas/5-PrecisoDeEspaco.tscn"
	$Porta5/Sprite.play("opening")

func _on_Porta5_body_exited(body):
	aberta = false
	$Porta5/Sprite.play("closing")

func _on_Porta6_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 6)
	porta = "res://Cenas/6!.tscn"
	$Porta6/Sprite.play("opening")

func _on_Porta6_body_exited(body):
	aberta = false
	$Porta6/Sprite.play("closing")

func _on_Porta7_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 7)
	porta = "res://Cenas/7-Confusao.tscn"
	$Porta7/Sprite.play("opening")

func _on_Porta7_body_exited(body):
	aberta = false
	$Porta7/Sprite.play("closing")

func _on_Porta8_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 8)
	porta = "res://Cenas/8-MaisForca.tscn"
	$Porta8/Sprite.play("opening")

func _on_Porta8_body_exited(body):
	aberta = false
	$Porta8/Sprite.play("closing")

func _on_Porta9_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 9)
	porta = "res://Cenas/9-Lua.tscn"
	$Porta9/Sprite.play("opening")

func _on_Porta9_body_exited(body):
	aberta = false
	$Porta9/Sprite.play("closing")

func _on_Porta10_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 10)
	porta = "res://Cenas/10-Sozinho.tscn"
	$Porta10/Sprite.play("opening")

func _on_Porta10_body_exited(body):
	aberta = false
	$Porta10/Sprite.play("closing")

func _on_Porta11_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 11)
	porta = "res://Cenas/11-EncontreOX.tscn"
	$Porta11/Sprite.play("opening")

func _on_Porta11_body_exited(body):
	aberta = false
	$Porta11/Sprite.play("closing")

func _on_Porta12_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 12)
	porta = "res://Cenas/12-SigaORato.tscn"
	$Porta12/Sprite.play("opening")

func _on_Porta12_body_exited(body):
	aberta = false
	$Porta12/Sprite.play("closing")

func _on_Porta13_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 13)
	porta = "res://Cenas/13-PorcoAranha.tscn"
	$Porta13/Sprite.play("opening")

func _on_Porta13_body_exited(body):
	aberta = false
	$Porta13/Sprite.play("closing")

func _on_Porta14_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 14)
	porta = "res://Cenas/14-AlgoMudou.tscn"
	$Porta14/Sprite.play("opening")

func _on_Porta14_body_exited(body):
	aberta = false
	$Porta14/Sprite.play("closing")

func _on_Porta15_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 15)
	porta = "res://Cenas/15-Depressa.tscn"
	$Porta15/Sprite.play("opening")

func _on_Porta15_body_exited(body):
	aberta = false
	$Porta15/Sprite.play("closing")

func _on_Porta16_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 16)
	porta = "res://Cenas/16-.tscn"
	$Porta16/Sprite.play("opening")

func _on_Porta16_body_exited(body):
	aberta = false
	$Porta16/Sprite.play("closing")

func _on_Porta17_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 17)
	porta = "res://Cenas/17-.tscn"
	$Porta17/Sprite.play("opening")

func _on_Porta17_body_exited(body):
	aberta = false
	$Porta17/Sprite.play("closing")

func _on_Porta18_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 18)
	porta = "res://Cenas/18-.tscn"
	$Porta18/Sprite.play("opening")

func _on_Porta18_body_exited(body):
	aberta = false
	$Porta18/Sprite.play("closing")

func _on_Porta19_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 19)
	get_node("/root/Global").set("fase", 19)
	porta = "res://Cenas/19-.tscn"
	$Porta19/Sprite.play("opening")

func _on_Porta19_body_exited(body):
	aberta = false
	$Porta19/Sprite.play("closing")

func _on_Porta20_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 20)
	porta = "res://Cenas/20-.tscn"
	$Porta20/Sprite.play("opening")

func _on_Porta20_body_exited(body):
	aberta = false
	$Porta20/Sprite.play("closing")

func _on_Porta21_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 21)
	porta = "res://Cenas/21-.tscn"
	$Porta21/Sprite.play("opening")

func _on_Porta21_body_exited(body):
	aberta = false
	$Porta21/Sprite.play("closing")

func _on_Porta22_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase_atual", 22)
	porta = "res://Cenas/22-.tscn"
	$Porta22/Sprite.play("opening")

func _on_Porta22_body_exited(body):
	aberta = false
	$Porta22/Sprite.play("closing")
