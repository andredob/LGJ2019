extends Node2D

#simplified phats
var snakePath = "table/Snake"
var frogPath = "table/Frog"
var batPath = "table/Bat"
var spiderPath = "table/Spider"

#cut vars
var cutting = false
var cut = false

#point vars
var prevPoint = Vector2(0,0)
var dist = 0
var actualPoint

#calculate the distance between two points and add a new point to the cut
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


#makes that just when the mouse is pressed is possible to cut
func _input(event):
	if Input.is_action_just_pressed("Cut") and cutting:
		print(get_global_mouse_position())
		cut = true
	elif Input.is_action_just_released("Cut") or not cutting:
		cut = false
	pass
	


#randonly select the sprite to be show for the selected animal
func _on_Button_button_down(animalName):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var rand = rng.randi_range(0,4)
	print(rand)
	if animalName == "frog":
		get_node(frogPath).frame = rand
		get_node(frogPath).visible = true
	elif animalName == "bat":
		get_node(batPath).frame = rand
		get_node(batPath).visible = true
	elif animalName == "snake":
		get_node(snakePath).frame = rand
		get_node(snakePath).visible = true
	elif animalName == "spider":
		get_node(spiderPath).frame = rand
		get_node(spiderPath).visible = true
	cutting = true
	pass

