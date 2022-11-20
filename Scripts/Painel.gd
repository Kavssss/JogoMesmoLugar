extends Area2D

func _ready():
	$Label.visible_characters = 0

func _process(delta):
	if $Label.visible_characters == -1:
		if Input.is_action_just_released("ui_accept"):
			get_node("../UserSenha").visible = true
			get_node("../UserSenha/Sprite/User").grab_focus()
			get_node("../PlayerMenu").parado = true

func _on_Painel_body_entered(body):
	$Label.visible_characters = -1

func _on_Painel_body_exited(body):
	$Label.visible_characters = 0
