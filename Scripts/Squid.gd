extends KinematicBody2D
class_name Squid

export var velocity = Vector2(0, 0)
export var friction = Vector2(0, 0)
export (bool) var alive = true
export (Image) var sprite = null
onready var image = get_node("Image")

func _ready():
	if sprite != null:
		image.set_texture(sprite)

func _tick(delta):
	pass

func _process(delta):
	if alive:
		_tick(delta)
		move_and_slide(velocity, Vector2.UP)
		velocity *= friction
