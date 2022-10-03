extends CanvasLayer

signal time_out

onready var timer = get_node("Timer")

func _on_BankZone_entered(_body_rid, _body, _body_shape_index, _local_shape_index):
	timer.start_timer()
	print("Bank zone entered!")


func _on_Timer_time_out():
	emit_signal("time_out")
