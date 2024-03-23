extends Panel

func _on_Button_button_down():
	get_tree().change_scene("res://Levels.tscn")
	

func _on_Button2_button_down():
	Panel.visible = false
