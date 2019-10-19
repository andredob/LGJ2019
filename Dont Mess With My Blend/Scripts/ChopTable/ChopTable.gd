extends Node2D

var cutting = false
var cut = false

var prevPoint = Vector2(0,0)
var dist = 0
var actualPoint

func _process(delta):
	actualPoint = get_global_mouse_position()
	if cut:
		if prevPoint.x == 0 and prevPoint.y == 0:
			prevPoint = actualPoint
		else:
			get_child(0).add_point(actualPoint)
			dist = dist + prevPoint.distance_to(actualPoint)
	else:
		pass
	pass

func _input(event):
	if Input.is_action_just_pressed("Cut") and cutting:
		print(get_global_mouse_position())
		cut = true
	elif Input.is_action_just_released("Cut") or not cutting:
		cut = false
	pass
	

#Frog button
func _on_Button_button_down():
	get_child(1).get_child(0).visible = true
	cutting = true
	pass # Replace with function body.
