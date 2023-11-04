extends Sprite2D


func _process(delta):
	if Global.seeblood:
		self.visible = true
	elif Global.seeblood == false:
		self.visible = false
