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

func _process(delta):
	pass

func _ready():
	pass

func _on_Button_button_down():
	get_child(0).get_child(0).visible = true
	pass # Replace with function body.
