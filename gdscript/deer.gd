extends CharacterBody2D

@onready var marker = get_tree().get_first_node_in_group('mark')
@onready var anima = $AnimatedSprite2D
const speed = 100

func _physics_process(_delta):
	if velocity.length() !=0:
		anima.play('deerwalk')
	else:
		anima.stop()
	if Global.seedeer:
		self.visible = true
		var direction = global_position.direction_to(marker.global_position)
		velocity = direction*speed
	elif Global.seedeer == false:
		self.visible = false
	move_and_slide()



func _on_area_2d_area_entered(area):
	if area is markk:
		velocity = Vector2(0,0)
		print('entermarkkk')
		self.queue_free()
		Global.seeskin = true
		Global.canwalk = true
		Global.speed = 1000
