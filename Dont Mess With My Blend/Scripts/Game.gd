extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var camera = get_node("Camera2D")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for screen in GameManager.screens:
			camera.position = screen.pos
	pass
