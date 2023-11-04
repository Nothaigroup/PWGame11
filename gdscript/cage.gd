extends Area2D

@onready var text1 = $text1
@onready var text2 = $text2
@onready var text3 = $text3

var canpress = false
func _ready():
	text1.hide()
	text2.hide()
	text3.hide()

var duh = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	if Input.is_action_just_pressed('pressE') and canpress and duh ==0:
		text1.hide()
		text2.show()
		Global.playerfow = false
		duh += 1
	elif Input.is_action_just_pressed('pressE') and duh ==1:
		text2.hide()
		text3.show()
		duh+=1
	elif Input.is_action_just_pressed('pressE') and duh ==2:
		text3.hide()
		
		


func _on_body_entered(body):
	if body is playerr:
		text1.show()
		canpress = true
		


func _on_body_exited(body):
	if body is playerr:
		text1.hide()
		canpress = false
