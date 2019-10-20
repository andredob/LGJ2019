extends Node
var defaultIcon = load("res://icon.png")
var animais = [
{"nome": "Sapo", "sprite": defaultIcon,"partes" : [
{"nome": "Coracao de sapo","sprite" : load("res://Sprites/PartesCorpo/Coracao.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Lingua de sapo","sprite" : load("res://Sprites/PartesCorpo/Lingua1.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Pata de sapo","sprite" : load("res://Sprites/PartesCorpo/Pata1.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Secreção de sapo","sprite" : load("res://Sprites/PartesCorpo/Secrecao.png"), "tipo":"parte", "tamanho" : 0}
]},
{"nome": "Morcego", "sprite": defaultIcon,"partes" : [
{"nome": "Orelha de morcego","sprite" : load("res://Sprites/PartesCorpo/Orelha.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Asa de morcego","sprite" : load("res://Sprites/PartesCorpo/Asa.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Pata de morcego","sprite" : load("res://Sprites/PartesCorpo/Pata2.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Coração de morcego","sprite" : load("res://Sprites/PartesCorpo/Coracao.png"), "tipo":"parte", "tamanho" : 0}
]},
{"nome": "Cobra", "sprite": defaultIcon,"partes" : [
{"nome": "Veneno de cobra","sprite" : load("res://Sprites/PartesCorpo/Veneno.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Coração de cobra","sprite" : load("res://Sprites/PartesCorpo/Coracao.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Lingua de cobra","sprite" : load("res://Sprites/PartesCorpo/Lingua2.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Cauda de cobra","sprite" : load("res://Sprites/PartesCorpo/PontaCauda.png"), "tipo":"parte", "tamanho" : 0}
]},
{"nome": "Aranha", "sprite": defaultIcon,"partes" : [
{"nome": "Teia de aranha","sprite" : load("res://Sprites/PartesCorpo/Teia.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Pata de aranha","sprite" : load("res://Sprites/PartesCorpo/Pata3.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Presas de aranha","sprite" : load("res://Sprites/PartesCorpo/Presas.png"), "tipo":"parte", "tamanho" : 0},
{"nome": "Pêlo de aranha","sprite" : load("res://Sprites/PartesCorpo/Pelo.png"), "tipo":"parte", "tamanho" : 0}
]}
]
