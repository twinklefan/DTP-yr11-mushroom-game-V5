extends Area2D

func _ready():
	visible = false

func _on_btnXmasHat_body_entered(body):
	#get question2 node
	var question = get_parent().get_node("question6")
	# check that it was the player
	if body.name == "Player":
		# call function to change sprite to orange if the question has been answered correcly
		if question.Xmas_Hat_correct == 1:
			body.change_Xmas_Hat()
			

func invisible():
	visible = false
func visible():
	visible = true
