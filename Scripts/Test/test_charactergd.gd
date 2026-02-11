extends CharacterBody2D

@onready var navigation_agent: NavigationAgent2D = $NavigationAgent2D

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	
	move_and_slide()

func _move(target: Vector2, speed: int) -> void:
	self.position += self.position.direction_to(target) * get_physics_process_delta_time() * speed
	navigation_agent.target_position = target
