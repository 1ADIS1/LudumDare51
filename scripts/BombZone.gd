extends Area2D

signal bomb_exploded

func _on_BombZone_body_entered(_body):
	var bomb = get_node_or_null("Bomb")
	if bomb != null:
		bomb.set_bomb(Vector2(0,0))
	print("Somebody entered a bomb zone!")


func _on_Bomb_bomb_exploded():
	emit_signal("bomb_exploded")
