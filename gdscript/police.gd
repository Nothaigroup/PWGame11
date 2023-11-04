extends CharacterBody2D


@export var speed = 150
@onready var playerrr = get_tree().get_first_node_in_group('lol')
@onready var labell = $press_e
@onready var said = $say
var canpress = false
var scene = 0

func _ready():
	labell.hide()
	said.hide()

func _physics_process(_delta):
	if Input.is_action_just_pressed('pressE') and canpress ==true and scene ==0:
		print('Lmao')
		said.show()
		scene +=1
	elif Input.is_action_just_pressed('pressE') and scene ==1:
		labell.hide()
		said.hide()
		Global.playerfow = true
	if Global.playerfow:
		velocity = (global_position.direction_to(playerrr.global_position))*speed
	move_and_slide()


func _on_area_2d_body_entered(body):
	if body is playerr:
		if Global.playerfow == false:
			labell.show()
			canpress = true
		elif Global.playerfow ==true:
			labell.hide()


func _on_area_2d_body_exited(body):
	if body is playerr:
		labell.hide()
		canpress = false
