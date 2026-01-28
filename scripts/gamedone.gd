extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")



func _on_quit_button_pressed() -> void:
	get_tree().quit()
