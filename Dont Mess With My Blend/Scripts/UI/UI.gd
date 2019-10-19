extends Control

#items do inventário
onready var items = [
get_node("IventoryPanel/Items/Item1"),
get_node("IventoryPanel/Items/Item2"),
get_node("IventoryPanel/Items/Item3"),
get_node("IventoryPanel/Items/Item4")
]

onready var leftButtonLabel = get_node("LeftScreen/Label")
onready var rightButtonLabel = get_node("RightScreen/Label")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	match GameManager.screenCamera:
		"left":
			rightButtonLabel.text = "Sala do Caldeirão"
		"right":
			leftButtonLabel.text = "Sala do Caldeirão"
		"center":
			rightButtonLabel.text = "Sala de Corte"
			leftButtonLabel.text = "Sala do Forno"
			
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


func _on_FrontScreenButton_button_down():
	#Change camera to front screen
	GameManager.screenCamera = "front"
	pass # Replace with function body.


func _on_LeftScreenButton_button_down():
	#Change camera to the left room
	if(GameManager.screenCamera == "right"):
		GameManager.screenCamera = "center"
	else:
		GameManager.screenCamera = "left"
	pass # Replace with function body.


func _on_RightScreenButton_button_down():
	#Change camera to the right room
	if(GameManager.screenCamera == "left"):
		GameManager.screenCamera = "center"
	else:
		GameManager.screenCamera = "right"
	pass # Replace with function body.
