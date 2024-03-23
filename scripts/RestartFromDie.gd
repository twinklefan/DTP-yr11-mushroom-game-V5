extends TouchScreenButton

#When replay button is pressed
func _on_TouchScreenButton_pressed():
	#change level to main scene
	get_tree().change_scene("res://MainScene.tscn")
