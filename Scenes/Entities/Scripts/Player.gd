extends KinematicBody2D

export var speed = 64

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	move()

func move():
	var x_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_input = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	var input_vector = Vector2(x_input, y_input).normalized()
	move_and_slide(input_vector * speed)
