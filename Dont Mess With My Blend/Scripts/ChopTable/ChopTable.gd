extends Node2D
var defaultIcon = preload("res://icon.png")

#onready var frogPos = get_node("frog").position

var itens = [
{"name": "frog", "sprite": "frog"}
]

var table = [
{"itemName": "", "sprite": ""}
]

func _process(delta):
	for iten in itens:
		if String(iten.sprite) == "":
			get_node(iten.name).set_texture(defaultIcon)
		
	pass

func _ready():
	
	pass


