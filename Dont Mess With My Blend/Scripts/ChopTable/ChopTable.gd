extends Node2D
var defaultIcon = preload("res://icon.png")

var aux = [
{"sprite": "dafaultIcon"}
] 

var itens = [
{"name": "frog", "sprite": "frog"}
]

var table = [
{"itemName": "", "sprite": ""}
]

func _draw():
	draw_circle(Vector2(956, 525),10,Color.black)

func _process(delta):
	pass

func _ready():
	pass

#Frog button
func _on_Button_button_down():
	get_child(0).get_child(0).visible = true
	pass # Replace with function body.
