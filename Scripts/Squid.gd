extends Node2D
class_name Squid

var velocity = Vector2(0, 0)
var friction = Vector2(0, 0)

export (bool) var alive = true

func _process(delta):
	
	translate(velocity)
	velocity *= friction
