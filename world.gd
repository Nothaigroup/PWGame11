extends Node2D

@onready var pause_menu = $PauseMenu
var paused = false


func _process(delta):
	if Input.is_action_just_pressed("pause"):
	
	
func pauseMenu():
	if paused:
		paused_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
		paused = !paused
