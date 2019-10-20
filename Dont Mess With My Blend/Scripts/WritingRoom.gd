extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var paperLabel = get_node("Table/Table/Paper/Label")
onready var WritingRoomSprite = get_node("WritingRoomSprite")
onready var fireplace = get_node("Fireplace")
onready var table = get_node("Table")

onready var papelIcon = preload("res://Sprites/Fundos/Paper.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed:
			if(event.scancode == 16777222 or event.scancode == 16777221):
				print("texto enviado para inventário "+paperLabel.text)
				GameManager.addItemInventario({"nome": "'"+paperLabel.text+"'", "sprite": papelIcon, "qtd": 1, "tipo":"papel", "valor": paperLabel.text})
				GameManager.canShowControls = true
				WritingRoomSprite.visible = true
				fireplace.visible = false
				table.visible = false
			elif(event.scancode == 16777217):
				null
			elif(str(paperLabel.text).length() < 10 and event.as_text().length() < 2):
				paperLabel.text = paperLabel.text+str(event.as_text())
	pass

func _on_ButtonTable_button_down():
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
	GameManager.canShowControls = true
	paperLabel.text = ""
	WritingRoomSprite.visible = true
	fireplace.visible = false
	table.visible = false
	pass # Replace with function body.


func _on_ButtonCloseFireplace_button_down():
	GameManager.canShowControls = true
	WritingRoomSprite.visible = true
	fireplace.visible = false
	table.visible = false
	pass # Replace with function body.
