extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tempControl = get_node("TempControl")
onready var ponteiroGrande = get_node("TempControl/Sprite/Ponteiro")
onready var ponteiroPequeno = get_node("Sprite/ControladorTemperatura/Ponteiro")

var canRoll = false

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#verifica se pode mudar a temperatura
	if(canRoll): 
		ponteiroGrande.look_at(get_local_mouse_position())
		ponteiroGrande.rotation_degrees += 90
		
		if(ponteiroGrande.rotation_degrees > 60):
			ponteiroGrande.rotation_degrees = 60
		elif(ponteiroGrande.rotation_degrees < -60):
			ponteiroGrande.rotation_degrees = -60
			
		print(ponteiroGrande.rotation_degrees)
	else:
		#atualiza ponteiros locais com o valor do gamemanager
		ponteiroGrande.rotation_degrees = GameManager.caldeiraoTemperatura-160
		ponteiroPequeno.rotation_degrees = GameManager.caldeiraoTemperatura-160
	pass


func _on_ButtonExpandTermometro_button_down():
	GameManager.canShowControls = false
	tempControl.visible = true
	pass # Replace with function body.


#func _on_ButtonCloseFireplace_button_down():
#	GameManager.canShowControls = true
#	WritingRoomSprite.visible = true
#	fireplace.visible = false
#	table.visible = false
#	pass # Replace with function body.

#ao clicar e segurar o ponteiro
func _on_ButtonTermControl_button_down():
	canRoll = true
	tempControl.visible = true
	pass # Replace with function body.

#ao soltar o ponteiro
func _on_ButtonTermControl_button_up():
	canRoll = false
	GameManager.caldeiraoTemperatura = ponteiroGrande.rotation_degrees+160
	GameManager.canShowControls = true
	tempControl.visible = false
	pass # Replace with function body.



