extends StaticBody2D

export (NodePath) var playerNodePath

onready var projectile_path = preload("res://scenes/Projectile.tscn")
onready var ray_cast = $RayCast2D

export (int) var reload_time
var reload_on = false
var current_reload = 0.0

func _physics_process(delta):
	var player = get_node(playerNodePath)
	look_at(player.position)

func _process(delta):
	if !reload_on and ray_cast.is_colliding():
		print("reload is off")
		instantiate_projectile()
		print(get_node("Projectile"))
		print($Projectile.position)
		reload_on = true
		current_reload = reload_time
	
	if (current_reload > 0):
		current_reload -= delta
	else:
		current_reload = 0
		reload_on = false

func instantiate_projectile():
	var direction = Vector2.RIGHT.rotated(global_rotation)
	var projectile = projectile_path.instance()
	
	projectile.direction = direction
	projectile.global_position = ray_cast.position
	projectile.add_collision_exception_with(self)
	
	add_child(projectile)
