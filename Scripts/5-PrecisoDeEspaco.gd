extends Node2D
	
func _physics_process(_delta):
	if Input.is_key_pressed(KEY_SPACE):
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()
