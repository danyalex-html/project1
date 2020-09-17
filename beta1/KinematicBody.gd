extends KinematicBody

const gravi = -25
const speed = 200
const rot = 2
var vel = Vector3()

func _physics_process(delta):
	var dir = Vector3()
	
	if Input.is_action_pressed("ui_home"):
		vel.y = 3
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
		dir = dir.rotated(Vector3(0,1,0), rotation.y)
		
	vel.x = dir.x
	vel.z = dir.z 
	
	vel.y += gravi * delta
	
	vel = move_and_slide(vel, Vector3(0,1,0))
