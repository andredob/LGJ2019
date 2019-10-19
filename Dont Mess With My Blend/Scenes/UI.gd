extends Control

#items do inventário
onready var items = [
get_node("Panel/Items/Item1"),
get_node("Panel/Items/Item2"),
get_node("Panel/Items/Item3"),
get_node("Panel/Items/Item4")
]

var defaultIcon = preload("res://icon.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	var cont = 0
	for item in items:
		var itemData = GameManager.inventario[cont]
		if(itemData.nome!=null and itemData.nome!=""):
			item.get_node("Label").text = itemData.nome
			item.get_node("TextureRect").texture = defaultIcon
			cont=cont+1
			pass
		else:
			item.get_node("Label").text = ""
			item.get_node("TextureRect").texture = null
			cont=cont+1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button1_button_down():
	print(items[1].nome)
	pass # Replace with function body.


func _on_Button2_button_down():
	pass # Replace with function body.


func _on_Button3_button_down():
	pass # Replace with function body.


func _on_Button4_button_down():
	pass # Replace with function body.
