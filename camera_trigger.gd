class_name CameraTrigger extends Area3D

@export var camera_target: RoomCamera

signal camera_triggered

func _ready() -> void:
    body_entered.connect(on_body_entered)

func on_body_entered(_intruder: Node3D) -> void:
    camera_triggered.emit(camera_target)