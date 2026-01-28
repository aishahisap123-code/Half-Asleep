extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.




func _on_done_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.can_move = false
		get_tree().change_scene_to_file("res://scenes/gamedone.tscn")
	



	
