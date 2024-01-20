extends Node

func _ready():
	%Board.set_attributes(120, 4, 10)
	%Board.start()
	%Lines.set_attributes(120, 4, 10)

func _process(_delta):
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
		
