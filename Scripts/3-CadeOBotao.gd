extends Node2D

func _ready():
	get_node("Botao/Sprite").play("null")
	
func _physics_process(_delta):
	if(get_node("Botao").isPressed()):
		get_node("Laser/Sprite").play("open")
		get_node("Laser").desativaColisao()
