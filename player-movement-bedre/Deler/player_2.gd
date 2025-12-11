extends CharacterBody2D


@export_subgroup("nodes")
@export var gravity_component: GravityComponents2
@export var input_component: InputComponents2
@export var movement_component: MovementComponents2
@export var jump_component: JumpComponents2


func _physics_process(delta: float) -> void:
	gravity_component.handle_gravity(self, delta)
	movement_component.handle_horizontal_movement(self, input_component.input_horizontal)
	jump_component.handle_jump(self, input_component.get_jump_input())
	
	move_and_slide()
