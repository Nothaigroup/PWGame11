extends Control
@onready var label1 = $Label1
@onready var label2 = $Label2
@onready var pic2 = $TextureRect2
@onready var label3 = $Label3
@onready var label4 = $Label4
@onready var label5 = $Label5



var duh = 0

func _ready():
	label2.hide()
	pic2.hide()
	label3.hide()
	label4.hide()
	label5.hide()

func _process(_delta):
	if Input.is_action_just_pressed('enter') and duh ==0:
		label1.hide()
		label2.show()
		duh += 1
	elif Input.is_action_just_pressed('enter') and duh ==1:
		label1.hide()
		label2.hide()
		pic2.show()
		label3.show()
		duh+=1
	elif Input.is_action_just_pressed('enter') and duh ==2:
		label1.hide()
		label2.hide()
		pic2.show()
		label3.hide()
		label4.show()
		duh+=1
	elif Input.is_action_just_pressed('enter') and duh==3:
		label1.hide()
		label2.hide()
		pic2.hide()
		label3.hide()
		label4.hide()
		label5.show()
		
		duh+=1
		
		
	elif Input.is_action_just_pressed('enter') and duh ==4:
			get_tree().change_scene_to_file("res://scene/world.tscn")
