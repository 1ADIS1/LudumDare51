extends Node2D

func _on_HUD_time_out():
	print("Game Over!")
	get_tree().reload_current_scene()
