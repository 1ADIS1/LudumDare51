extends KinematicBody2D

var direction = Vector2.RIGHT
export (float) var speed

func _start():
	set_as_toplevel(true)
	direction = direction.normalized()
	look_at(direction + global_position)
 
func _physics_process(delta):
	var velocity = direction * speed * delta
	var collision = move_and_collide(velocity)
	if collision and collision.collider:
		queue_free()
