extends Camera2D

const zona = 190

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		var camera = event.position - get_viewport().size * 0.5
		if camera.length() < zona:
			self.position = Vector2(0,0)
		else:
			self.position = camera.normalized() *(camera.length() - zona) * 0.5


	
 
