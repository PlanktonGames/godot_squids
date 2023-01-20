extends Squid

var speed = 25

func _ready():
	friction.x = 0.92
	friction.y = 0.90

func _tick(delta):
	velocity.y += 98
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed

	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
			velocity.y -= 5000
