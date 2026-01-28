extends Node

const GIRL_START_POS:= Vector2i(150,485)
const CAM_START_POS := Vector2i(642,370)

var speed : float
const START_SPEED : float = 10.0
const MAX_SPEED : int = 25


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_game()

func new_game():
	$girl.position = GIRL_START_POS
	$girl.velocity = Vector2i(0, 0)
	$Camera2D.position = CAM_START_POS
	$Ground.position = Vector2i(0, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	speed = START_SPEED
	
	$girl.position.x += speed
	$Camera2D.position.x += speed
