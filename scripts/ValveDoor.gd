extends StaticBody2D



func _on_BombZone_bomb_exploded():
	queue_free()
	print("Valve door exploded!")
