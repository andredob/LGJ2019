extends Node

var rng = RandomNumberGenerator.new()
var isNight

func _ready():
	rng.randomize()
	isNight = rng.randi_range(0, 1)
	pass