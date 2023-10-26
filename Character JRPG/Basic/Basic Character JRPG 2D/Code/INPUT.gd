extends Node

func GetKeys():
	var dir = Vector2i.ZERO
	
	if Input.is_action_pressed("LEFT") and not Input.is_action_pressed("RIGHT"):
		dir.x = -1
	if not Input.is_action_pressed("LEFT") and Input.is_action_pressed("RIGHT"):
		dir.x = 1
	if Input.is_action_pressed("DOWN") and not Input.is_action_pressed("UP"):
		dir.y = 1
	if not Input.is_action_pressed("DOWN") and Input.is_action_pressed("UP"):
		dir.y = -1
	
	return dir
