extends Node2D

onready var bubble = $Bubble
onready var panel = $Display/CanvasLayer/PanelContainer

func _ready() -> void:
	pass


func _on_InteractionArea_area_entered(area: Area2D) -> void:
	panel.visible = true


func _on_InteractionArea_area_exited(area: Area2D) -> void:
	panel.visible = false
