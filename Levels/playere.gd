extends KinematicBody2D

var speed = 2 * 60

func _process(delta):
	var dir = Vector2.ZERO
	dir.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	dir.y = Input.get_action_strength("Down") - Input.get_action_strength("Up")
	
	dir = dir.normalized()
	move_and_slide(dir * speed)
