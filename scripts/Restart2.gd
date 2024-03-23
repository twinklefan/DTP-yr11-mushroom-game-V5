extends Button

#when restart button is pressed
func _on_Button_pressed():
	#change scene to Mainscene.tscn
	get_tree().change_scene("res://MainScene.tscn")
