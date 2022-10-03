extends Camera2D

onready var player = get_parent()

func _process(_delta):
	position.x = player.position.x
	position.y = player.position.y
