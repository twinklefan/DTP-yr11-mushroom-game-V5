extends Area2D

#when node touches Red
func _on_Red_body_entered(body):
	#check node name is player
	if body.name == "Player":
		#if so change call function change_red in player.gd
		body.change_red()
