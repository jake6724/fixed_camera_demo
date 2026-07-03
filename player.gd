class_name Player extends CharacterBody3D

@export var move_speed: float = 5.0
@export var acceleration: float = 100.0

var forward_direction: Vector3 = Vector3.FORWARD
var right_direction: Vector3 = Vector3.RIGHT

func _physics_process(delta: float) -> void:
    var move_input: Vector2 = Input.get_vector("move_left", "move_right", "move_down", "move_up")
    var move_direction = (forward_direction * move_input.y) + (right_direction * move_input.x)
    move_direction.y = 0
    move_direction = move_direction.normalized()

    velocity = velocity.move_toward((move_direction * move_speed), acceleration * delta)

    move_and_slide()

func set_forward(_forward: Vector3) -> void:
    forward_direction = _forward

func set_right(_right: Vector3) -> void:
    right_direction = _right