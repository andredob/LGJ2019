extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var camera = get_node("Camera2D")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	print(GameManager.regras.setup)
	print(GameManager.regras.get_quantidade(Armario.itens[0]))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for screen in GameManager.screens:
		if(screen.name == GameManager.screenCamera):
			camera.position = screen.pos
	pass
