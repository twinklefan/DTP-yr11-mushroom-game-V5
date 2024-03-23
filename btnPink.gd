extends Area2D

func _ready():
	visible = false

func _on_btnPink_body_entered(body):
	#get question2 node
	var question = get_parent().get_node("question3")
	# check that it was the player
	if body.name == "Player":
		# call function to change sprite to light green if the question has been answered correcly
		if question.pink_correct == 1:
			body.change_pink()

func invisible():
	visible = false
func visible():
	visible = true


