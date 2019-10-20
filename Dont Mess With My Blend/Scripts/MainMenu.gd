extends Control

# Declare member variables here. Examples:
onready var circleEdge = get_node("CircleEdge")
onready var circleCenter = get_node("CircleCenter")
var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	time = time + delta
	if(time>6):
		var surgeRuna = get_node("SurgeRuna")
		surgeRuna.position = Vector2((randi()%1180)+100, (randi()%620)+100)
		surgeRuna.get_node("AnimationPlayer").play("BrilhoAnim")
		time=0
	
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
