extends Sprite

var points = [
Vector2(534, 527),
Vector2(629, 413),
Vector2(620, 638),
Vector2(675, 527),
Vector2(786, 526),
Vector2(847, 415),
Vector2(845, 635),
Vector2(956, 525),
]

var lastPoint = Vector2(0,0)
var actualPoint = Vector2(0,0)
var mousePressed = false

func _ready():
	pass

func _process(delta):
	if mousePressed:
		get_child(1).add_point(actualPoint)
	pass

func _input(event):
	if event is InputEventMouseButton:
		print(actualPoint)
		lastPoint = actualPoint
		actualPoint = event.relative
		if !mousePressed :
			mousePressed = true
		else:
			mousePressed = false
		print(event.is_pressed())


