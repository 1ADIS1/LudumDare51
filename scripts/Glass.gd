extends StaticBody2D

func _on_Area2D_body_entered(_body):
	print("Glass is broken!")
	print("Glass particle effects!")
	queue_free()
