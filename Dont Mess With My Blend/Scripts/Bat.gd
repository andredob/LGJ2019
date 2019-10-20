extends Node2D


var pontoAtual = Vector2()
var partes = Animais.animais[1].partes
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
	
func corte(array):
	if array.size() >= 2:
		if array[0] == $cabeca.position and array[1] == $ombro.position:
			print("orelha")
			GameManager.addItemInventario(partes[0])
		if array[0] == $asaI.position and array[1] == $asaI2.position:
			print("pata")
			GameManager.addItemInventario(partes[2])
		if array[0] == $ombro.position and array[1] == $asaI.position:
			print("asa")
			GameManager.addItemInventario(partes[1])
		if array[0] == $barriga.position and array[1] == $asaI.position:
			print("coração")
			GameManager.addItemInventario(partes[3])
			
		
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
	print(pontoAtual)
	
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
