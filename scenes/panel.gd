extends Panel

@export var size_x: int = 3
@export var size_y: int = 3
var square = preload("res://scenes/color_rect.tscn")

func _ready():
	var number_of_squares = size_x * size_y - 1
	var squares = []
	var count:int = 0
	for i in range(size_x):
		for j in range(size_y):
			count += 1
			var new_square = square.instantiate()
			new_square.set_attributes(Vector2i(i, j), count)
			add_child(new_square)
			squares.append(new_square)
	print(number_of_squares)
	
func _physics_process(delta):
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
