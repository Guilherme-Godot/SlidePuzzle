extends ColorRect

@export var sizeint: int = 150
@export var board_position: int 

func _ready():
	size.x = sizeint
	size.y = sizeint
	
func set_attributes(coordenates: Vector2i, board_position_arg: int, sizeint_arg: int, border_size: int):
	sizeint = sizeint_arg
	board_position = board_position_arg
	position.x = coordenates.x * sizeint + border_size
	position.y = coordenates.y  * sizeint + border_size
	get_node("Label").text = str(board_position)
