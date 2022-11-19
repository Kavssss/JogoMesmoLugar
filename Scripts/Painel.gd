extends Area2D

func _ready():
	$Label.visible_characters = 0

func _on_Painel_body_entered(body):
	$Label.visible_characters = -1


func _on_Painel_body_exited(body):
	$Label.visible_characters = 0
