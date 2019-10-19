extends Sprite
var defaultIcon = preload("res://icon.png")

func _ready():
	pass # Replace with function body.


func _on_Button_button_down():
	ChopTable.itens[0] = {"name": "frog", "sprite": defaultIcon} 
	pass 
