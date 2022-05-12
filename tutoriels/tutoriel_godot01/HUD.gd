extends CanvasLayer

signal start_game

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	
func show_game_over():
	show_message("Perdu!")
	yield($MessageTimer, "timeout")
	
	$MessageTimer.text = "Prépare-toi!"
	$Message.show()
	
	yield(get_tree().create_timer(1), "timeout")
	$StartButton.show()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
