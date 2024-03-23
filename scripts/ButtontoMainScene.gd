extends Button

#I dont know which scene uses this script!

func _on_Button_pressed():
	print("res://MainScene.tscn")
	get_tree().change_scene("res://MainScene.tscn")
