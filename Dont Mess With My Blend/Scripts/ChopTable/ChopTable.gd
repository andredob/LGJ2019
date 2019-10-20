extends Node2D

#nodes
onready var line2d = get_node("Line2D")

var corte = []
var cortePosition = Vector2()

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

#distance for all types of cuts
var perfectDistance = 300

#calculate the distance between two points and add a new point to the cut
func _process(delta):
	
	if get_node("tabua").get_child_count() > 0:
		
		if not Input.is_mouse_button_pressed(BUTTON_RIGHT):
			if corte.size() >=2:
				get_node("tabua").get_child(0).corte(corte)
				print(corte)
			corte.clear()
			cortePosition = Vector2()
			get_node("tabua").get_child(0).pontoAtual = Vector2()
			
				
		
		if cortePosition != get_node("tabua").get_child(0).pontoAtual:
			print("ponto")
			corte.append(get_node("tabua").get_child(0).pontoAtual)
			cortePosition = get_node("tabua").get_child(0).pontoAtual
		
			
	pass

#makes that just when the mouse is pressed is possible to cut
func _input(event):
	if Input.is_action_just_pressed("Cut") and cutting:
		cut = true
	elif Input.is_action_just_released("Cut") or not cutting:
		cut = false
	pass

var pre_sapo = preload("res://Scenes/Animais/Frog.tscn")
var pre_morcego = preload("res://Scenes/Animais/Bat.tscn")
var pre_cobra = preload("res://Scenes/Animais/Snake.tscn")
var pre_aranha = preload("res://Scenes/Animais/Spider.tscn")

func _on_Button_button_down():
	if get_node("tabua").get_child_count() > 0:
		get_node("tabua").get_child(0).queue_free()
	var sapo = pre_sapo.instance()
	sapo.position =  Vector2(15,100)
	sapo.scale = Vector2(0.8,0.8)
	get_node("tabua").add_child(sapo)
	
	pass
	
func _on_Button2_button_down():
	if get_node("tabua").get_child_count() > 0:
		get_node("tabua").get_child(0).queue_free()
	var bat = pre_morcego.instance()
	bat.position =  Vector2(15,100)
	bat.scale = Vector2(0.8,0.8)
	get_node("tabua").add_child(bat)
	pass # Replace with function body.


func _on_Button3_button_down():
	if get_node("tabua").get_child_count() > 0:
		print(get_node("tabua").get_child_count())
		get_node("tabua").get_child(0).queue_free()
		
	var cobra = pre_cobra.instance()
	cobra.position =  Vector2(15,100)
	cobra.scale = Vector2(0.8,0.8)
	get_node("tabua").add_child(cobra)
	
	pass # Replace with function body.


func _on_Button4_button_down():
	if get_node("tabua").get_child_count() > 0:
		get_node("tabua").get_child(0).queue_free()
	var aranha = pre_aranha.instance()
	aranha.position =  Vector2(15,100)
	aranha.scale = Vector2(0.8,0.8)
	get_node("tabua").add_child(aranha)
	pass # Replace with function body.
