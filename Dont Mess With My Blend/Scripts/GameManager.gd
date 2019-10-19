extends Node

var defaultIcon = preload("res://icon.png")

var screenCamera = "center"
var screens = [
{"name": "center", "pos": Vector2(640, 360)},
{"name": "left", "pos": Vector2(-640, 360)},
{"name": "front", "pos": Vector2(640, -360)},
{"name": "right", "pos": Vector2(1920, 360)}
]

var inventario = [
{"nome": "Perna esquerda de sapo", "sprite": defaultIcon, "qtd": 1},
{"nome": "Perna esquerda de sapo", "sprite": defaultIcon, "qtd": 1},
{"nome": "Perna esquerda de sapo", "sprite": defaultIcon, "qtd": 1},
{"nome": "Perna esquerda de sapo", "sprite": defaultIcon, "qtd": 1}, 
]
