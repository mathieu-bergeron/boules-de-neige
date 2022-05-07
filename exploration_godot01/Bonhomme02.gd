extends ProximityGroup


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_LEFT:
			self.translate(Vector3(-4,0,0))
		elif event.scancode == KEY_RIGHT:
			self.translate(Vector3(4,0,0))
		elif event.scancode == KEY_UP:
			self.translate(Vector3(0,4,0))
		elif event.scancode == KEY_DOWN:
			self.translate(Vector3(0,-4,0))
		elif event.scancode == KEY_A or event.scancode == KEY_H:
			self.translate(Vector3(0,0,-4))
		elif event.scancode == KEY_Z or event.scancode == KEY_N:
			self.translate(Vector3(0,0,4))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
