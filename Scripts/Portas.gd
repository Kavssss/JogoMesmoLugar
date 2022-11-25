extends Node

var aberta = false
var som = true
var porta = ""

func _input(event):
	if aberta:
		if Input.is_action_just_released("ui_accept"):
			som = false
			get_node("/root/Global").esc = true
			get_node("/root/Transition").fade_into(porta)

func _on_Porta1_body_entered(body):
	aberta = true
	porta = "res://Cenas/1-Simples.tscn"
	$Porta1/Sprite.play("opening")
	somPorta()

func _on_Porta1_body_exited(body):
	aberta = false
	$Porta1/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta2_body_entered(body):
	aberta = true
	porta = "res://Cenas/2-Espere.tscn"
	$Porta2/Sprite.play("opening")
	somPorta()

func _on_Porta2_body_exited(body):
	aberta = false
	$Porta2/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta3_body_entered(body):
	aberta = true
	porta = "res://Cenas/3-CadeOBotao.tscn"
	$Porta3/Sprite.play("opening")
	somPorta()

func _on_Porta3_body_exited(body):
	aberta = false
	$Porta3/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta4_body_entered(body):
	aberta = true
	porta = "res://Cenas/4-Volte.tscn"
	$Porta4/Sprite.play("opening")
	somPorta()

func _on_Porta4_body_exited(body):
	aberta = false
	$Porta4/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta5_body_entered(body):
	aberta = true
	porta = "res://Cenas/5-PrecisoDeEspaco.tscn"
	$Porta5/Sprite.play("opening")
	somPorta()

func _on_Porta5_body_exited(body):
	aberta = false
	$Porta5/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta6_body_entered(body):
	aberta = true
	porta = "res://Cenas/6!.tscn"
	$Porta6/Sprite.play("opening")
	somPorta()

func _on_Porta6_body_exited(body):
	aberta = false
	$Porta6/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta7_body_entered(body):
	aberta = true
	porta = "res://Cenas/7-Confusao.tscn"
	$Porta7/Sprite.play("opening")
	somPorta()

func _on_Porta7_body_exited(body):
	aberta = false
	$Porta7/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta8_body_entered(body):
	aberta = true
	porta = "res://Cenas/8-MaisForca.tscn"
	$Porta8/Sprite.play("opening")
	somPorta()

func _on_Porta8_body_exited(body):
	aberta = false
	$Porta8/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta9_body_entered(body):
	aberta = true
	porta = "res://Cenas/9-Lua.tscn"
	$Porta9/Sprite.play("opening")
	somPorta()

func _on_Porta9_body_exited(body):
	aberta = false
	$Porta9/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta10_body_entered(body):
	aberta = true
	porta = "res://Cenas/10-Sozinho.tscn"
	$Porta10/Sprite.play("opening")
	somPorta()

func _on_Porta10_body_exited(body):
	aberta = false
	$Porta10/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta11_body_entered(body):
	aberta = true
	porta = "res://Cenas/11-EncontreOX.tscn"
	$Porta11/Sprite.play("opening")
	somPorta()

func _on_Porta11_body_exited(body):
	aberta = false
	$Porta11/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta12_body_entered(body):
	aberta = true
	porta = "res://Cenas/12-SigaORato.tscn"
	$Porta12/Sprite.play("opening")
	somPorta()

func _on_Porta12_body_exited(body):
	aberta = false
	$Porta12/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta13_body_entered(body):
	aberta = true
	porta = "res://Cenas/13-PorcoAranha.tscn"
	$Porta13/Sprite.play("opening")
	somPorta()

func _on_Porta13_body_exited(body):
	aberta = false
	$Porta13/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta14_body_entered(body):
	aberta = true
	porta = "res://Cenas/14-AlgoMudou.tscn"
	$Porta14/Sprite.play("opening")
	somPorta()

func _on_Porta14_body_exited(body):
	aberta = false
	$Porta14/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta15_body_entered(body):
	aberta = true
	porta = "res://Cenas/15-Depressa.tscn"
	$Porta15/Sprite.play("opening")
	somPorta()

func _on_Porta15_body_exited(body):
	aberta = false
	$Porta15/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta16_body_entered(body):
	aberta = true
	porta = "res://Cenas/16-Zoom.tscn"
	$Porta16/Sprite.play("opening")
	somPorta()

func _on_Porta16_body_exited(body):
	aberta = false
	$Porta16/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta17_body_entered(body):
	aberta = true
	porta = "res://Cenas/17-Ventania.tscn"
	$Porta17/Sprite.play("opening")
	somPorta()

func _on_Porta17_body_exited(body):
	aberta = false
	$Porta17/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta18_body_entered(body):
	aberta = true
	porta = "res://Cenas/18-Proxima.tscn"
	$Porta18/Sprite.play("opening")
	somPorta()

func _on_Porta18_body_exited(body):
	aberta = false
	$Porta18/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta19_body_entered(body):
	aberta = true
	get_node("/root/Global").set("fase", 19)
	porta = "res://Cenas/19-1.tscn"
	$Porta19/Sprite.play("opening")
	somPorta()

func _on_Porta19_body_exited(body):
	aberta = false
	$Porta19/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta20_body_entered(body):
	aberta = true
	porta = "res://Cenas/20-Cuidado.tscn"
	$Porta20/Sprite.play("opening")
	somPorta()

func _on_Porta20_body_exited(body):
	aberta = false
	$Porta20/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta21_body_entered(body):
	aberta = true
	porta = "res://Cenas/21-NaoEstaAqui.tscn"
	$Porta21/Sprite.play("opening")
	somPorta()

func _on_Porta21_body_exited(body):
	aberta = false
	$Porta21/Sprite.play("closing")
	if som:
		somPorta()

func _on_Porta22_body_entered(body):
	aberta = true
	porta = "res://Cenas/22-Morse.tscn"
	$Porta22/Sprite.play("opening")
	somPorta()

func _on_Porta22_body_exited(body):
	aberta = false
	$Porta22/Sprite.play("closing")
	if som:
		somPorta()

func somPorta():
	get_node("/root/Global/Porta").play()
