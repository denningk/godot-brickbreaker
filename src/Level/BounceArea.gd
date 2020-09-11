extends Area2D


export var bounceNormal: Vector2

func _on_BounceArea_body_entered(body: Node) -> void:
	body.bounce(bounceNormal)
