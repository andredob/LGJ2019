extends Node2D

var pontoAtual = Vector2()
var partes = Animais.animais[2].partes
func _ready():
	randomize()
	var cor  = randi()%2
	var forma = randi()%2
	
	if cor == 0:
		cor = "Amarelo"
	else :
		cor = "Azul"
	if forma == 0:
		forma = "Bola"
	else :
		forma = "Listra"
	$sprite.texture = load(str("res://Sprites/ChopTable/Snake/",cor,forma,".png"))
	pass
	
func corte(array):
	if array.size() >= 2:
		if array[0] == $cabeca3.position and array[1] == $cabeca.position or array[1] == $cabeca3.position and array[0] == $cabeca.position:
			print("veneno")
			GameManager.addItemInventario(partes[0])
		if array[0] == $cabeca.position and array[1] == $pescoso.position or array[1] == $cabeca.position and array[0] == $pescoso.position:
			print("lingua")
			GameManager.addItemInventario(partes[2])
		if array[0] == $coracao.position and array[1] == $coracao2.position or array[1] == $coracao.position and array[0] == $coracao2.position:
			print("coração")
			GameManager.addItemInventario(partes[1])
		if array[0] == $callda.position and array[1] == $callda2.position or array[1] == $callda.position and array[0] == $callda2.position:
			print("calda")
			GameManager.addItemInventario(partes[3])

	pass



func _on_cabeca_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $cabeca.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_cabeca3_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $cabeca3.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_coracao2_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $coracao2.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_coracao_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $coracao.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_pescoso_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $pescoso.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_callda_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
			pontoAtual = $callda.position
	print(pontoAtual)
	pass # Replace with function body.


func _on_callda2_mouse_entered():
	if Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
		pontoAtual = $callda2.position
	print(pontoAtual)
	pass # Replace with function body.
