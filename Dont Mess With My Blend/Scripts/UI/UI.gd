extends Control

#items do inventário
onready var items = [
get_node("InventoryPanel/Items/Item1"),
get_node("InventoryPanel/Items/Item2"),
get_node("InventoryPanel/Items/Item3"),
get_node("InventoryPanel/Items/Item4")
]

onready var itemSwitch = get_node("AudioStreamPlayer2D")

onready var pause = get_node("Pause")

onready var leftButtonLabel = get_node("LeftScreen/Label")
onready var rightButtonLabel = get_node("RightScreen/Label")

onready var animationPlayer = get_node("AnimationPlayer")
onready var labelErro = get_node("LabelErro")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(GameManager.errorMessage!=""):
		print("tem msg")
		labelErro.text = GameManager.errorMessage
		animationPlayer.play("messageError")
		GameManager.errorMessage = ""
		
	if(GameManager.canShowControls):
		get_node("FrontScreen").visible = true
		get_node("RightScreen").visible = true
		get_node("LeftScreen").visible = true
	else:
		get_node("FrontScreen").visible = false
		get_node("RightScreen").visible = false
		get_node("LeftScreen").visible = false
		
	if(Input.is_action_just_pressed("ui_cancel")):
		print("pause"+str(get_tree().paused))
		if(get_tree().paused):
			get_tree().paused = false
			pause.visible = false
		else:
			get_tree().paused = true
			pause.visible = true
		
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
	itemSwitch.play()
	jogarItem(0)
	pass # Replace with function body.

func _on_Button2_button_down():
	itemSwitch.play()
	jogarItem(1)
	pass # Replace with function body.

func _on_Button3_button_down():
	itemSwitch.play()
	jogarItem(2)
	pass # Replace with function body.


func _on_Button4_button_down():
	itemSwitch.play()
	#chamar função que vai jogar o item no centro da tela (caldeirão, mesa etc)
	jogarItem(3)
	pass # Replace with function body.
	
func jogarItem(inve):
	match GameManager.screenCamera:
		"lareira":
			if GameManager.inventario[inve].tipo == "papel":
				jogar_papel(GameManager.inventario[inve]) 
				GameManager.inventario[inve] = {"nome": "", "sprite": null, "qtd": 0,"tipo" : ""}
		"center":
			GameManager.addItemCaldeirao(GameManager.inventario[inve])
			GameManager.inventario[inve] = {"nome": "", "sprite": null, "qtd": 0,"tipo" : ""}
	
	pass
func jogar_papel(papel):
	var runa = GameManager.regras.get_runa(papel.nome)
	
	if typeof(runa) != TYPE_BOOL:
		print(runa)
		GameManager.regras.setup.runaEscolhida = GameManager.regras.setup.runa
		GameManager.showRuna = true
		#executar animação da Runa
		print("runa certa")
	else : 
		randomize()
		GameManager.regras.setup.runaEscolhida = rand_range(5,7)
		GameManager.showRuna = true
		#executar animação de Runa falha
		print("runa errada")
		
	pass

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


func _on_ButtonContinuar_button_down():
	get_tree().paused = false
	pause.visible = false
	pass # Replace with function body.


func _on_ButtonMenu_button_down():
	get_tree().paused = false
	pause.visible = false
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.


func _on_Button1_gui_input(event):
	
	if event is InputEventMouseButton:
		if(event.button_index==2):
			itemSwitch.play()
			GameManager.inventario[0] = {"nome": "", "sprite": null, "qtd": 0,"tipo" : ""};
	pass # Replace with function body.


func _on_Button2_gui_input(event):
	if event is InputEventMouseButton:
		if(event.button_index==2):
			itemSwitch.play()
			GameManager.inventario[1] = {"nome": "", "sprite": null, "qtd": 0,"tipo" : ""};
	pass # Replace with function body.

func _on_Button3_gui_input(event):
	if event is InputEventMouseButton:
		if(event.button_index==2):
			itemSwitch.play()
			GameManager.inventario[2] = {"nome": "", "sprite": null, "qtd": 0,"tipo" : ""};
	pass # Replace with function body.
	
func _on_Button4_gui_input(event):
	if event is InputEventMouseButton:
		if(event.button_index==2):
			itemSwitch.play()
			GameManager.inventario[3] = {"nome": "", "sprite": null, "qtd": 0,"tipo" : ""};
	pass # Replace with function body.


