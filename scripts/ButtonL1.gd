extends Button

#when home screen pressed, change scene to level
func _on_Button_button_down():
	get_tree().change_scene("res://Levels/MainScene.tscn")
