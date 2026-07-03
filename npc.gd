class_name NPC extends Node3D

@export var area_talk: Area3D
@export var hint_talk: Sprite3D

func _ready() -> void:
    area_talk.body_entered.connect(on_talk_area_body_entered)
    area_talk.body_exited.connect(on_talk_area_body_exited)
    hint_talk.hide()

func on_talk_area_body_entered(_player: Player) -> void:
    hint_talk.show()

func on_talk_area_body_exited(_player: Player) -> void:
    hint_talk.hide()
    