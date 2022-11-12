extends Area2D

func _on_Sair_body_entered(body):
	$Timer.start(0)

func _on_Timer_timeout():
	get_tree().quit()
