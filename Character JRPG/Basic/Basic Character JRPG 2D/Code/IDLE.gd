extends "res://Basic Character JRPG 2D/Code/Basic State.gd"


func _ready():
	await get_tree().process_frame
	%Anim.set("parameters/MOVE/blend_position", %FSM.get_node("WALK").last_dir * 0.5)

func Transition():
	var key = %FSM.MyInput.GetKeys()
	if key != Vector2i.ZERO:
		%FSM.current = %FSM.get_node("WALK")

func Start():
	%Anim.set("parameters/MOVE/blend_position", %FSM.get_node("WALK").last_dir * 0.5)
