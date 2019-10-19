extends Control

#items do inventário
onready var items = [
get_node("Panel/Items/Item1"),
get_node("Panel/Items/Item2"),
get_node("Panel/Items/Item3"),
get_node("Panel/Items/Item4")
]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var cont = 0
	for item in items:
		var itemData = GameManager.inventario[cont]
		item.get_node("Label").text = itemData.nome
		item.get_node("TextureRect").texture = itemData.sprite
		cont=cont+1
	pass


func _on_Button1_button_down():
	#chamar função que vai jogar o item no centro da tela (caldeirão, mesa etc)
	GameManager.inventario[0] = {"nome": "", "sprite": null, "qtd": 0};
	pass # Replace with function body.

func _on_Button2_button_down():
	#chamar função que vai jogar o item no centro da tela (caldeirão, mesa etc)
	GameManager.inventario[1] = {"nome": "", "sprite": null, "qtd": 0};
	pass # Replace with function body.

func _on_Button3_button_down():
	#chamar função que vai jogar o item no centro da tela (caldeirão, mesa etc)
	GameManager.inventario[2] = {"nome": "", "sprite": null, "qtd": 0};
	pass # Replace with function body.


func _on_Button4_button_down():
	#chamar função que vai jogar o item no centro da tela (caldeirão, mesa etc)
	GameManager.inventario[3] = {"nome": "", "sprite": null, "qtd": 0};
	pass # Replace with function body.
