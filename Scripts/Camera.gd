extends Camera2D

export var speed = 64
export var move_amount = -64

var target_pos = Vector2.ZERO

func _process(delta: float) -> void:
	position = position.move_toward(target_pos, speed * delta)

func _on_RoomDetection_area_entered(area: Area2D) -> void:
	target_pos.y = move_amount


func _on_RoomDetection_area_exited(area: Area2D) -> void:
	target_pos.y = 0
