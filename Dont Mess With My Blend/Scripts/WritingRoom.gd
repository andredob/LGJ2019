extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var paperLabel = get_node("Table/Table/Paper/Label")
onready var WritingRoomSprite = get_node("WritingRoomSprite")
onready var fireplace = get_node("Fireplace")
onready var table = get_node("Table")

onready var icon = get_node("Table/Table/Paper")

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
				GameManager.inventario[3] = {"nome": "Papel Escrito", "sprite": icon.texture, "qtd": 1, "value": paperLabel.text}
				WritingRoomSprite.visible = true
				fireplace.visible = false
				table.visible = false
			elif(event.scancode == 16777217):
				paperLabel.text = ""
				WritingRoomSprite.visible = true
				fireplace.visible = false
				table.visible = false
			elif(str(paperLabel.text).length() < 10 and event.as_text().length() < 2):
				paperLabel.text = paperLabel.text+str(event.as_text())
	pass

func _on_ButtonTable_button_down():
	WritingRoomSprite.visible = false
	fireplace.visible = false
	table.visible = true
	pass # Replace with function body.


func _on_ButtonFireplace_button_down():
	WritingRoomSprite.visible = false
	fireplace.visible = true
	table.visible = false
	pass # Replace with function body.
