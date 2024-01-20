extends Panel

@export var n_x: int = 3
@export var n_y: int = 3
@export var size_arg: int = 100
@export var border_size:int = 10
var square = preload("res://scenes/color_rect.tscn")

func set_attributes(sizes:int, n:int, border_size:int):
	n_x = n
	n_y = n
	size_arg = sizes
	border_size = border_size

func start():
	size.x = size_arg * n_x + border_size * 2
	size.y = size_arg * n_y + border_size * 2
	var number_of_squares = n_x * n_y - 1
	var squares = []
	var count:int = 0
	for i in range(n_x):
		for j in range(n_y):
			count += 1
			if count > number_of_squares:
				break;
			var new_square = square.instantiate()
			new_square.set_attributes(Vector2i(j, i), count, size_arg, border_size)
			add_child(new_square)
			squares.append(new_square)
	print(number_of_squares)
	
func _draw():
	draw_line(Vector2i(size_arg, size_arg), Vector2i(size_arg, n_y * size_arg), Color.WHITE_SMOKE, 2)
	draw_line(Vector2i(50, 50), Vector2i(50, 200), Color.WHITE_SMOKE, 5)
	
func _physics_process(delta):
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()
