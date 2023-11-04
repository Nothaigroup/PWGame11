extends Sprite2D
@onready var pick = $drbagarea/pick
var canpick = false


func _ready():
	pass

func _on_area_2d_body_entered(body):
	if body is playerr:
		pick.show()
		canpick = true


func _on_area_2d_body_exited(body):
	if body is playerr:
		canpick = false
		pick.hide()


func _physics_process(_delta):
	if Input.is_action_just_pressed("pressE") and canpick:
		Global.seebag = false
		print('PickfkingBAGG')
		Global.policedead = true
		Global.seeblood = true
	if Global.seebag:
		self.visible = true
	if Global.seebag==false:
		self.visible = false
		
