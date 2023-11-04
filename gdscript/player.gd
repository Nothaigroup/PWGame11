extends CharacterBody2D
class_name playerr


@export var speed = 300

func handleinput():
	if Global.canwalk:
		var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
		velocity = direction * speed
	

func _physics_process(_delta):
	handleinput()
	move_and_slide()

