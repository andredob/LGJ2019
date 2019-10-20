extends Line2D


func _process(delta):
	if Input.is_action_just_released("Cut"):
		$Timer.stop()
	pass


func _on_Timer_timeout():
	add_point(get_global_mouse_position())
	$Timer.start()
	pass # Replace with function body.
