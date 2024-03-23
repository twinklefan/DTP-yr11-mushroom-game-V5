extends Area2D

func _ready():
	visible = false

func _on_btnOrange_body_entered(body):
	#get question2 node
	var question = get_parent().get_node("question5")
	# check that it was the player
	if body.name == "Player":
		# call function to change sprite to orange if the question has been answered correcly
		if question.orange_correct == 1:
			body.change_orange()

func invisible():
	visible = false
func visible():
	visible = true
