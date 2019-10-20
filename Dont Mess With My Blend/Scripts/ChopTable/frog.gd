extends Sprite

var pre_sapo = preload("res://Scenes/Animais/Frog.tscn")

func _on_Button_button_down():
	if get_parent().get_node("tabua").get_child_count() > 0:
		get_parent().get_node("tabua").get_child(0).queue_free()
		var sapo = pre_sapo.instance()
		sapo.position =  Vector2(15,160)
		get_parent().get_node("tabua").add_child(sapo)
	
	pass
