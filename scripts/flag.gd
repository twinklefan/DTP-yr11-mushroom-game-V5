extends Area2D

func _on_flag_body_entered(body):
	if body.name == "Player":
		#change scene to levels as the player has completed the level
		get_tree().change_scene("res://Finished.tscn")
		print("Player touched flag!")
