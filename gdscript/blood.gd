extends Sprite2D
var deer = preload("res://scene/deer.tscn")
var instancedeer = deer.instantiate()

func _process(delta):
	if Global.seeblood:
		self.visible = true
	elif Global.seeblood == false:
		self.visible = false


func _on_bloodarea_body_entered(body):
	if body is playerr and Global.policedead:
		Global.canwalk = false
		Global.seedeer = true
