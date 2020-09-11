extends KinematicBody2D


export var speed := 200
var direction := Vector2.UP


func _physics_process(_delta: float) -> void:
	var velocity := direction.normalized() * speed
	velocity = move_and_slide(velocity)
	
	
func bounce(bounceNormal: Vector2) -> void:
	direction = direction.bounce(bounceNormal)
