extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass




func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")




func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_help_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/help.tscn")


func _on_settings_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/settings.tscn")


func _on_pause_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
