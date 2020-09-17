extends Kinematicbody
const speed = 100
const rot = 1

func _physics_process(delta):
	var dir = Vector3()
	
	if Input.is_action_pressed("ui_up"):
		dir.x = -1
	if Input.is_action_pressed("ui_down"):
		dir.x = 1
	if Input.is_action_pressed("ui_left"):
		rotate_y(rot*delta)
	if Input.is_action_pressed("ui_right"):
		rotate_y(-rot*delta)
		
	if dir:
		dir *= speed * delta
		