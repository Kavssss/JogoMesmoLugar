extends Area2D

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		self.visible = false
		get_node("../PlayerMenu").parado = false

	if $Sprite/User.text.length() == 8:
		$Sprite/Password.grab_focus()

	if $Sprite/Password.text.length() == 4:
		if $Sprite/User.text == "iamtagir" and $Sprite/Password.text == "tlas":
			self.visible = false
			get_node("../PlayerMenu").parado = false
			get_node("../Elevador/Sprite").play("abrir")
			get_node("../Painel/Label").visible = false
			get_node("../Elevador/CollisionShape2D").disabled = false
		else:
			self.visible = false
			$Sprite/User.text = ""
			$Sprite/Password.text = ""
			get_node("../PlayerMenu").parado = false
