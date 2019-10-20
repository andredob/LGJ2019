extends Node
var defaultIcon = load("res://icon.png")
var animais = [
{"nome": "Sapo", "sprite": defaultIcon,"partes" : [
{"nome": "Coracao de sapo","sprite" : load("res://Sprites/PartesCorpo/Coracao.png")},
{"nome": "Lingua de sapo","sprite" : load("res://Sprites/PartesCorpo/Lingua1.png")},
{"nome": "Pata de sapo","sprite" : load("res://Sprites/PartesCorpo/Pata1.png")},
{"nome": "Secreção de sapo","sprite" : load("res://Sprites/PartesCorpo/Secrecao.png")}
]},
{"nome": "Morcego", "sprite": defaultIcon,"partes" : [
{"nome": "Orelha de morcego","sprite" : load("res://Sprites/PartesCorpo/Orelha.png")},
{"nome": "Asa de morcego","sprite" : load("res://Sprites/PartesCorpo/Asa.png")},
{"nome": "Pata de morcego","sprite" : load("res://Sprites/PartesCorpo/Pata2.png")},
{"nome": "Coração de morcego","sprite" : load("res://Sprites/PartesCorpo/Coracao.png")}
]},
{"nome": "Cobra", "sprite": defaultIcon,"partes" : [
{"nome": "Veneno de cobra","sprite" : load("res://Sprites/PartesCorpo/Veneno.png")},
{"nome": "Coração de cobra","sprite" : load("res://Sprites/PartesCorpo/Coracao.png")},
{"nome": "Lingua de cobra","sprite" : load("res://Sprites/PartesCorpo/Lingua2.png")},
{"nome": "Cauda de cobra","sprite" : load("res://Sprites/PartesCorpo/PontaCauda.png")}
]},
{"nome": "Aranha", "sprite": defaultIcon,"partes" : [
{"nome": "Teia de aranha","sprite" : load("res://Sprites/PartesCorpo/Teia.png")},
{"nome": "Pata de aranha","sprite" : load("res://Sprites/PartesCorpo/Pata3.png")},
{"nome": "Presas de aranha","sprite" : load("res://Sprites/PartesCorpo/Presas.png")},
{"nome": "Pêlo de aranha","sprite" : load("res://Sprites/PartesCorpo/Pelo.png")}
]}
]
