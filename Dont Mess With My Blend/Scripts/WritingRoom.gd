extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var runas = [preload("res://Sprites/Runas/Runa1.png"),
preload("res://Sprites/Runas/Runa2.png"),
preload("res://Sprites/Runas/Runa3.png"),
preload("res://Sprites/Runas/Runa4.png"),
preload("res://Sprites/Runas/Runa5.png"),
preload("res://Sprites/Runas/Runa6.png"),
preload("res://Sprites/Runas/Runa7.png"),
preload("res://Sprites/Runas/Runa8.png")]

onready var paperLabel = get_node("Table/Table/Paper/Label")
onready var WritingRoomSprite = get_node("WritingRoomSprite")
onready var fireplace = get_node("Fireplace")
onready var table = get_node("Table")

onready var papelIcon = preload("res://Sprites/Fundos/Paper.png")
var oldRuna = null

onready var surgeRuna = get_node("Fireplace/SurgeRuna")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(GameManager.showRuna and GameManager.screenCamera == "lareira"):
		oldRuna = GameManager.regras.setup.runa
		surgeRuna.get_node("Runa").texture = runas[GameManager.regras.setup.runa]
		surgeRuna.visible = true
		surgeRuna.get_node("AnimationPlayer").play("BrilhoAnim")
		GameManager.showRuna = false
	pass

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and GameManager.screenCamera == "table":
			if(event.scancode == 16777222 or event.scancode == 16777221):
				print("texto enviado para inventário "+paperLabel.text)
				GameManager.screenCamera = "left"
				if(!GameManager.addItemInventario({"nome": paperLabel.text, "sprite": papelIcon, "qtd": 1, "tipo":"papel", "tamanho": 0})):
					GameManager.errorMessage = "ERRO: INVENTÁRIO CHEIO"
				else:
					GameManager.canShowControls = true
					WritingRoomSprite.visible = true
					fireplace.visible = false
					table.visible = false
			elif(event.scancode == 16777220):
				paperLabel.text = str(paperLabel.text).substr(0, str(paperLabel.text).length() - 1)
			elif(str(paperLabel.text).length() < 10 and event.as_text().length() < 2):
				paperLabel.text = paperLabel.text+str(event.as_text())
	pass

func _on_ButtonTable_button_down():
	GameManager.screenCamera = "table";
	GameManager.canShowControls = false
	WritingRoomSprite.visible = false
	fireplace.visible = false
	table.visible = true
	pass # Replace with function body.


func _on_ButtonFireplace_button_down():
	GameManager.canShowControls = false
	GameManager.screenCamera = "lareira";
	WritingRoomSprite.visible = false
	fireplace.visible = true
	table.visible = false
	pass # Replace with function body.


func _on_ButtonClosePaper_button_down():
	GameManager.screenCamera = "left"
	GameManager.canShowControls = true
	paperLabel.text = ""
	WritingRoomSprite.visible = true
	fireplace.visible = false
	table.visible = false
	pass # Replace with function body.


func _on_ButtonCloseFireplace_button_down():
	surgeRuna.get_node("AnimationPlayer").stop()
	surgeRuna.visible = false
	GameManager.screenCamera = "left"
	GameManager.canShowControls = true
	WritingRoomSprite.visible = true
	fireplace.visible = false
	table.visible = false
	pass # Replace with function body.
