extends Node

var defaultIcon = preload("res://icon.png")
onready var regras = preload("res://Scripts/setup.gd").new()
onready var animais = preload("res://Scripts/Animais.gd").new()

var canShowControls = true
var caldeiraoTemperatura = 100

var barraDeQualidade = 100

var screenCamera = "center"
var screens = [
{"name": "center", "pos": Vector2(640, 360)},
{"name": "left", "pos": Vector2(-640, 360)},
{"name": "front", "pos": Vector2(640, -360)},
{"name": "right", "pos": Vector2(1920, 360)},
{"name": "lareira", "pos": Vector2(-640, 360)},
{"name": "temperatura", "pos": Vector2(640, 360)},
]

var inventario = [
{"nome": "", "sprite": null, "tipo":"", "tamanho" : 0},
{"nome": "", "sprite": null, "tipo":"", "tamanho" : 0},
{"nome": "", "sprite": null, "tipo":"", "tamanho" : 0},
{"nome": "", "sprite": null, "tipo":"", "tamanho" : 0}, 
]

func addItemInventario(itemExterno):
	var hasSpace = false
	for i in range(4):
		print(i)
		if(inventario[i].nome=="" and inventario[i].sprite==null):
			inventario[i] = itemExterno
			hasSpace = true
			break
			pass
		else:
			hasSpace = false
		pass
	return hasSpace
	
	
	
	
	
	
	
	
	
	
	