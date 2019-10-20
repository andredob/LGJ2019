extends Node

var defaultIcon = preload("res://icon.png")
onready var regras = preload("res://Scripts/setup.gd").new()
onready var animais = preload("res://Scripts/Animais.gd").new()

var barraDeQualidade = 100

var screenCamera = "center"
var screens = [
{"name": "center", "pos": Vector2(640, 360)},
{"name": "left", "pos": Vector2(-640, 360)},
{"name": "front", "pos": Vector2(640, -360)},
{"name": "right", "pos": Vector2(1920, 360)},
{"name": "lareira", "pos": Vector2(-640, 360)}
]

var inventario = [
{"nome": "", "sprite": defaultIcon, "qtd": 1},
{"nome": "", "sprite": defaultIcon, "qtd": 1},
{"nome": "", "sprite": defaultIcon, "qtd": 1},
{"nome": "", "sprite": defaultIcon, "qtd": 1}, 
]


	
	
	
	
	
	
	
	
	
	
	