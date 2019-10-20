extends Node2D


var pontoAtual = Vector2()

func _ready():
	randomize()
	var cor  = randi()%2
	var forma = randi()%2
	
	if cor == 0:
		cor = "Amarelo"
	else :
		cor = "Marron"
	if forma == 0:
		forma = "Bola"
	else :
		forma = "Listra"
	$MorcegoMarronListra.texture = load(str("res://Sprites/ChopTable/Bat/Morcego",cor,forma,".png"))
	pass

func _on_cabeca_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $cabeca.position
	print(pontoAtual)
	pass


func _on_ombro_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $ombro.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_asaI_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $asaI.position
	
	pass # Replace with function body.


func _on_asaI2_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $asaI2.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_barriga_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $barriga.position
	print(pontoAtual)
	pass # Replace with function body.
