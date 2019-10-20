extends Node2D

onready var sun = get_node("Sun")
onready var night = get_node("Night")
onready var windowSun = get_node("WindowSun")
onready var windowNight = get_node("WindowNight")


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(DayAndNightManager.isNight):
		sun.visible = false
		night.visible = true
		windowSun.visible = false
		windowNight.visible = true
	else:
		sun.visible = true
		night.visible = false
		windowSun.visible = true
		windowNight.visible = false
	pass
