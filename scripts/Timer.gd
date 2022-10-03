extends Label

signal time_out

export var time = 10
var timer_on = false

func start_timer():
	timer_on = true
	
func _process(delta):
	if (time < 0):
		timer_on = false
		emit_signal("time_out")
		return
	
	if (timer_on):
		time -= delta
	
	var millis = fmod(time, 1) * 1000
	var secs = fmod(time, 60)
	text = "%02d:%03d" %[secs, millis]
