extends Area2D


func _on_Blue_body_entered(body):
	var player = get_parent().get_node("question1")
	# check that it was the player
	if body.name == "Player":
		# call function to change sprite to blue if the question has been answered correcly
		if player.blue_correct == 1:
			body.change_blue()

func invisible():
	visible = false
func visible():
	visible = true
