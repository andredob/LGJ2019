extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tempControl = get_node("TempControl")
onready var ponteiroGrande = get_node("TempControl/Sprite/Ponteiro")
onready var ponteiroPequeno = get_node("Sprite/ControladorTemperatura/Ponteiro")
onready var umidPonteiro = get_node("MedidorUmidade/PonteiroUmidade")
onready var caldeiraoClip = get_node("caldeirao")

var canRoll = false
var oldCaldeiraoLenght = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(GameManager.caldeiraoItems.size()!=oldCaldeiraoLenght):
		oldCaldeiraoLenght = GameManager.caldeiraoItems.size()
		caldeiraoClip.play()
		GameManager.errorMessage = "O item "+GameManager.caldeiraoItems[GameManager.caldeiraoItems.size()-1].nome+" foi colocado no caldeirão"
	
	
	if(GameManager.regras.setup.umidade>=50):
		umidPonteiro.rotation_degrees = GameManager.regras.setup.umidade*1.4
	else:
		umidPonteiro.rotation_degrees = (GameManager.regras.setup.umidade-50)*2.8

	#verifica se pode mudar a temperatura
	if(canRoll): 
		ponteiroGrande.look_at(get_local_mouse_position())
		ponteiroGrande.rotation_degrees += 90
		
		if(ponteiroGrande.rotation_degrees > 60):
			ponteiroGrande.rotation_degrees = 60
		elif(ponteiroGrande.rotation_degrees < -60):
			ponteiroGrande.rotation_degrees = -60
	else:
		#atualiza ponteiros locais com o valor do gamemanager
		ponteiroGrande.rotation_degrees = GameManager.caldeiraoTemperatura-160
		ponteiroPequeno.rotation_degrees = GameManager.caldeiraoTemperatura-160
	pass


func _on_ButtonExpandTermometro_button_down():
	GameManager.canShowControls = false
	tempControl.visible = true
	pass # Replace with function body.

#ao clicar e segurar o ponteiro
func _on_ButtonTermControl_button_down():
	GameManager.screenCamera = "temperatura"
	canRoll = true
	tempControl.visible = true
	pass # Replace with function body.

#ao soltar o ponteiro
func _on_ButtonTermControl_button_up():
	GameManager.screenCamera = "center"
	canRoll = false
	GameManager.caldeiraoTemperatura = ponteiroGrande.rotation_degrees+160
	GameManager.canShowControls = true
	tempControl.visible = false
	pass # Replace with function body.



