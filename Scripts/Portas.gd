extends Node

var aberta = false
var porta = ""

func _physics_process(_delta):
	if aberta:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene(porta)

func _on_Porta1_body_entered(body):
	aberta = true
	porta = "res://Cenas/1-Simples.tscn"
	$Porta1/Sprite.play("opening")

func _on_Porta1_body_exited(body):
	aberta = false
	$Porta1/Sprite.play("closing")
