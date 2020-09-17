extends DirectionalLight

func _process(delta):
	rotate(Vector3(0,0,1), 0.001)