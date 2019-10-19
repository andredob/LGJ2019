extends Sprite
var defaultIcon = preload("res://icon.png")

onready var chopTable = get_tree().get_root().get_node("ChopTable")

func _ready():
	pass # Replace with function body.


func _on_Button_button_down():
	self.visible = false
	pass
