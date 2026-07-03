class_name Main extends Node3D

@export var player: Player
@export var camera_triggers: Array[CameraTrigger]

func _ready() -> void:
	for ct: CameraTrigger in camera_triggers:
		ct.camera_triggered.connect(on_camera_triggered)

func on_camera_triggered(_camera: RoomCamera) -> void:
	_camera.make_current() 
	if not _camera.flip_controls:
		player.forward_direction = Vector3.FORWARD
		player.right_direction = Vector3.RIGHT
	else:
		player.forward_direction = -Vector3.RIGHT
		player.right_direction = Vector3.FORWARD
