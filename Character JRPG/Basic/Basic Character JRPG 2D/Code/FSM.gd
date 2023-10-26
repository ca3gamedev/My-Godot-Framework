extends Node

@onready var current = $IDLE
@onready var MyInput = $INPUT
@onready var Root = $".."

func _ready():
	%Anim.active = true

func _process(delta):
	current.Transition()
	current.Update()
	
func _physics_process(delta):
	current.Physics(delta)
