extends Node2D

var corte = []
var cortePosition = Vector2()

func _ready():
	pass
func _process(delta):
	
	if get_node("tabua").get_child_count() > 0:
		
		if not Input.is_mouse_button_pressed(BUTTON_RIGHT):
			if corte.size() >=2:
				get_node("tabua").get_child(0).corte(corte)
				print(corte)
			corte.clear()
			cortePosition = Vector2()
			get_node("tabua").get_child(0).pontoAtual = Vector2()
			
				
		
		if cortePosition != get_node("tabua").get_child(0).pontoAtual:
			print("ponto")
			corte.append(get_node("tabua").get_child(0).pontoAtual)
			cortePosition = get_node("tabua").get_child(0).pontoAtual
		
			
		
		
	pass
