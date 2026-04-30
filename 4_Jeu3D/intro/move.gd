
@tool
extends CSGBox3D

var speed = 10
var t = 0.0

func _process(delta: float) -> void:
	t += delta
	position.y = sin(t * speed)
