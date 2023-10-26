extends "res://Basic Character JRPG 2D/Code/Basic State.gd"

@onready var last_dir = Vector2i.DOWN

func Transition():
	var key = %FSM.MyInput.GetKeys()
	if key == Vector2i.ZERO:
		%FSM.current = %FSM.get_node("IDLE")
		%FSM.current.Start()

func Physics(delta):
	var keys = %FSM.MyInput.GetKeys()
	if keys != Vector2i.ZERO:
		last_dir = keys
	var dir = %FSM.Root.walkspeed * last_dir * delta
	%Anim.set("parameters/MOVE/blend_position", last_dir)
	
	%FSM.Root.move_and_collide(dir)
