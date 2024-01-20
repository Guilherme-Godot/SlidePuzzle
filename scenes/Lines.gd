extends Panel

@export var n_x: int = 3
@export var n_y: int = 3
@export var size_arg: int = 100
@export var border_size:int = 10

func set_attributes(sizes:int, n:int, border_size_arg:int):
	n_x = n
	n_y = n
	size_arg = sizes
	border_size = border_size_arg

func _draw():
	for i in range(n_x+1):
		var start = Vector2i(border_size + i * size_arg, border_size)
		var end = Vector2i(border_size + i * size_arg, border_size + n_y * size_arg)
		draw_line(start, end, Color.WHITE_SMOKE, 2)
	for i in range(n_y+1):
		var start = Vector2i(border_size, border_size + i * size_arg)
		var end = Vector2i(border_size + n_y * size_arg, border_size + i * size_arg)
		draw_line(start, end, Color.WHITE_SMOKE, 2)

