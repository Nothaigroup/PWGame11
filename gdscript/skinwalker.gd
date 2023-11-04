extends CharacterBody2D

@onready var anima = $AnimatedSprite2D
@onready var playerrr = get_tree().get_first_node_in_group('lol')
const SPEED = 301



func _physics_process(_delta):
	if velocity.length() !=0:
		anima.play('default')
	else:
		anima.stop()
	if Global.seeskin:
		self.visible = true
		var direction = global_position.direction_to(playerrr.global_position)
		velocity = direction*SPEED
	elif Global.seeskin == false:
		self.visible = false
	move_and_slide()
