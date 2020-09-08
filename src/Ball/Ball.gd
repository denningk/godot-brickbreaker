extends KinematicBody2D


export var speed := 200
var direction := Vector2.UP

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _physics_process(_delta: float) -> void:
	var velocity := direction * speed
	var collision := move_and_collide(velocity)
	
