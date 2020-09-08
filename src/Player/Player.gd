extends KinematicBody2D


var sprite_width: float

export var speed := 150
var screen_size: Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	sprite_width = $Sprite.texture.get_width() / 2
	

func _physics_process(_delta: float) -> void:
	var velocity := Vector2.ZERO
	var direction := get_direction()
	velocity.x = direction * speed
	velocity = move_and_slide(velocity, Vector2.UP)
	
	
func get_direction() -> float:
	return Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
