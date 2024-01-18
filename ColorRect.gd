extends ColorRect

@export var sizeint: int = 50
@export var board_position: int 

func _ready():
	size.x = sizeint
	size.y = sizeint
	
func set_attributes(coordenates: Vector2i, board_position_arg: int):
	board_position = board_position_arg
	position.x = coordenates.x * sizeint
	position.y = coordenates.y  * sizeint
	get_node("Label").text = str(board_position)
