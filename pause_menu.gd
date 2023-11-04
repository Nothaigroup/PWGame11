extends Control

var is_paused: bool = false

func set_is_paused(value):
	is_paused=value
	get_tree().paused=is_paused
	visible=is_paused

func _unhandled_input(event):
	if event.is_action_pressed("resume"):
		set_is_paused(!is_paused)




func _on_resume_pressed():
	print("Resume button pressed")
	set_is_paused(false)


func _on_exit_button_pressed():
	print("Exit button pressed")
	get_tree().quit()
