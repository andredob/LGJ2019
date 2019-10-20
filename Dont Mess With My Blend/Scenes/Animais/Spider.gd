extends Node2D

var pontoAtual = Vector2()
var partes = Animais.animais[3].partes
func _ready():
	randomize()
	var cor  = randi()%2
	var forma = randi()%2

	if cor == 0:
		cor = "Amarela"
	else :
		cor = "Marrom"
	if forma == 0:
		forma = "Bolinhas"
	else :
		forma = "Listras"
	$sprite.texture = load(str("res://Sprites/ChopTable/Spider/Aranha",cor,forma,".png"))
	pass
	
func corte(array):
	if array.size() >= 2:
		if array[0] == $bunda.position and array[1] == $bunda2.position:
		
			GameManager.addItemInventario(partes[0])
		if array[0] == $pata.position and array[1] == $pata2.position:
			print("pata")
			GameManager.addItemInventario(partes[1])
		if array[0] == $presa.position and array[1] == $presa2.position:
			print("presa")
			GameManager.addItemInventario(partes[2])
		if array.size()>3:
			if array[0] == $presa.position and array[1] == $bunda.position and  array[2] == $bunda2.position and array[3] == $presa2.position:
				print("pelo")
				GameManager.addItemInventario(partes[3])
			
		
	pass

func _on_bunda_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $bunda.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_bunda2_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $bunda2.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_presa_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $presa.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_presa2_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $presa2.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_pata_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $pata.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_pata2_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $pata2.position
	print(pontoAtual)
	pass # Replace with function body.
