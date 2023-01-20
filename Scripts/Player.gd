extends Squid

func _ready():
	friction.x = 0.92
	friction.y = 0.92

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x += -1

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1

	if Input.is_action_pressed("ui_up"):
		velocity.y += -1

	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
