extends StaticBody2D

signal bomb_exploded

func set_bomb(desired_position):
	position = desired_position
	print(position)
	yield(get_tree().create_timer(1.5), "timeout")
	print("BOOOOM!")
	emit_signal("bomb_exploded")
	hide()
	queue_free()

