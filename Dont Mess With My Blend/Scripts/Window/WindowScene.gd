extends Node2D

onready var sols = [get_node("Dia/sol"), get_node("Dia/sol1"), get_node("Dia/sol2"), get_node("Dia/sol3")]
onready var luas = [get_node("Noite/luNova"), get_node("Noite/luaCrescente"), get_node("Noite/luaCheia"), get_node("Noite/luaMinguante")]

onready var noite = get_node("Noite")
onready var dia = get_node("Dia")

onready var windowSun = get_node("Dia/WindowSun")
onready var windowNight = get_node("Noite/WindowNight")


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(DayAndNightManager.isNight):
		noite.visible = true
		dia.visible = false
		luas[GameManager.regras.setup.lua].visible = true
		windowSun.visible = false
		windowNight.visible = true
	else:
		noite.visible = false
		dia.visible = true
		sols[GameManager.regras.setup.hora].visible = true
		windowSun.visible = true
		windowNight.visible = false
	pass


func _on_ButtonPoCamomila_button_down():
	if(!GameManager.addItemInventario(Armario.itens[0])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.


func _on_ButtonSemMaracuja_button_down():
	if(!GameManager.addItemInventario(Armario.itens[1])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.


func _on_ButtonAguaBanho_button_down():
	if(!GameManager.addItemInventario(Armario.itens[2])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.


func _on_ButtonCristal_button_down():
	if(!GameManager.addItemInventario(Armario.itens[3])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.


func _on_ButtonPoGuarana_button_down():
	if(!GameManager.addItemInventario(Armario.itens[4])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.


func _on_ButtonSemPapoula_button_down():
	if(!GameManager.addItemInventario(Armario.itens[5])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.


func _on_ButtonSuorGamer_button_down():
	if(!GameManager.addItemInventario(Armario.itens[6])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.


func _on_ButtonCalcio_button_down():
	if(!GameManager.addItemInventario(Armario.itens[7])):
		print("ERRO SEM ESPAÇO NO INVENTARIO!")
	pass # Replace with function body.
