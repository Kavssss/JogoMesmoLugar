extends Node2D
	
func _physics_process(_delta):
	if get_node("Botao").isPressed():
		if Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S):
			get_node("Laser/Sprite").play("open")
			get_node("Laser").desativaColisao()
