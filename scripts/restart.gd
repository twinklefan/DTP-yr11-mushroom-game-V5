extends TouchScreenButton

#When replay button is pressed
func _on_TouchScreenButton_pressed():
	#change scene to Mainscene.tscn
	get_tree().change_scene("res://MainScene.tscn")
