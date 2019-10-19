extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var paperLabel = get_node("Table/Table/Paper/Label")
onready var scene = get_node("scene")
onready var fireplace = get_node("Fireplace")
onready var table = get_node("Table")

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
			print(event.scancode)
			if(event.scancode == 16777222 or event.scancode == 16777221):
				print("enviou o texto "+paperLabel.text)
				#Mandar o texto para o tratamento das Runas
			elif(event.scancode == 16777217):
				scene.visible = true
				fireplace.visible = false
				table.visible = false
			elif(str(paperLabel.text).length() < 10 and event.as_text().length() < 2):
				paperLabel.text = paperLabel.text+str(event.as_text())
	pass

func _on_ButtonTable_button_down():
	scene.visible = false
	fireplace.visible = false
	table.visible = true
	pass # Replace with function body.


func _on_ButtonFireplace_button_down():
	scene.visible = false
	fireplace.visible = true
	table.visible = false
	pass # Replace with function body.
