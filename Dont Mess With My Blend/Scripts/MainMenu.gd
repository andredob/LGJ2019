extends Control

# Declare member variables here. Examples:
onready var circleEdge = get_node("CircleEdge")
onready var circleCenter = get_node("CircleCenter")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	circleEdge.set_rotation(circleEdge.get_rotation()+0.002)
	circleCenter.set_rotation(circleCenter.get_rotation()-0.0002)
	pass    
    
func _on_ButtonJogar_button_down():
	get_tree().change_scene("res://Scenes/Game.tscn")
	pass # Replace with function body.


func _on_ButtonSair_button_down():
	get_tree().quit()
	pass # Replace with function body.


func _on_ButtonCreditos_button_down():
	#chamar scena de créditos
	pass # Replace with function body.
