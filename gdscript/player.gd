extends CharacterBody2D
class_name playerr
@onready var animation = $AnimationPlayer

@export var speed = 1500

func handleinput():
	if Global.canwalk:
		var movedirection = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
		velocity = movedirection * speed

func updateanimation():
	if velocity.length() ==0:
		animation.stop()
	else:
		var direction = 'down'
		if velocity.x <0:
			direction = 'left'
		elif velocity.x >0:
			direction = 'right'
		elif velocity.y <0:
			direction = 'up'
	
		animation.play('walk'+direction)
func _physics_process(_delta):
	handleinput()
	updateanimation()
	move_and_slide()

