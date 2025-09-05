extends Control  # or VBoxContainer, depending on your Options scene root

func _on_backbtn_pressed() -> void:
	_change_scene("res://Scenes/Main Menu/mainmenu.tscn")


func _change_scene(path: String) -> void:
	# safer: defer scene change to next frame
	if get_tree().has_method("change_scene_to_file"):
		get_tree().call_deferred("change_scene_to_file", path)
	else:
		get_tree().call_deferred("change_scene", path)


func _on_pressed() -> void:
	pass # Replace with function body.
