extends Node2D

var pontoAtual = Vector2()
var partes = Animais.animais[0].partes
func _ready():
	randomize()
	var cor  = randi()%2
	var forma = randi()%2
	
	if cor == 0:
		cor = "Azul"
	else :
		cor = "Verde"
	if forma == 0:
		forma = "Bola"
	else :
		forma = "Listra"
	$sprite.texture = load(str("res://Sprites/ChopTable/Frog/",cor,forma,".png"))
	pass
	
func corte(array):
	if array.size() >= 2:
		if array[0] == $cabeca.position and array[1] == $bochecha.position:
			print("lingua")
			GameManager.addItemInventario(partes[3])
		if array[0] == $cabeca.position and array[1] == $ombroD.position:
			print("secreção")
			GameManager.addItemInventario(partes[0])
		if array[0] == $ombroD.position and array[1] == $Barriga.position:
			print("coração")
			GameManager.addItemInventario(partes[1])
		if array[0] == $pataS.position and array[1] == $pataI.position:
			print("pata")
			GameManager.addItemInventario(partes[2])

	pass


func _on_cabeca_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $cabeca.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_pataI_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $pataI.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_pataS_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $pataS.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_ombroD_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $ombroD.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_Barriga_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $Barriga.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_bochecha_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $bochecha.position
	print(pontoAtual)
	pass # Replace with function body.
