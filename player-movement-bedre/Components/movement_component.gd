class_name MovementComponent
extends Node


@export_subgroup("settings")
@export var speed: float = 700

func handle_horizontal_movement(body: CharacterBody2D, direction: float) -> void:
	body.velocity.x = direction * speed
