extends Sprite

export var move_amount = 8

var is_up = false
onready var sprite = $Bubble

func _process(delta: float) -> void:
	var second = OS.get_time().second
	if is_up and second % 2 == 0:
		position.y += move_amount
		is_up = false
	elif not is_up and second % 2 == 1:
		position.y -= move_amount
		is_up = true
