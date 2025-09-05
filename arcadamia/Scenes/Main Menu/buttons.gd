extends VBoxContainer

func _on_startbtn_pressed() -> void:
	_change_scene("res://scenes/GameScene.tscn")

func _on_resumebtn_pressed() -> void:
	_change_scene("res://scenes/OptionsMenu.tscn")

func _on_scoreboardbtn_pressed() -> void:
	_change_scene("res://scenes/Main Menu/scoreboard.tscn")

func _on_optionsbtn_pressed() -> void:
	_change_scene("res://scenes/Main Menu/options.tscn")

func _on_exitbtn_pressed() -> void:
	get_tree().quit()


func _change_scene(path: String) -> void:
	# works for Godot 3 and 4 (defers the change to avoid free/timing errors)
	if get_tree().has_method("change_scene_to_file"):
		get_tree().call_deferred("change_scene_to_file", path)
	else:
		get_tree().call_deferred("change_scene", path)
