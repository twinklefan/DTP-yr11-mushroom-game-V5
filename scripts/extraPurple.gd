extends Area2D

func _ready():
	visible = true
	
func _on_extraPurple_body_entered(body):
	#get question node
	var question = get_parent().get_node("question4")
	#check if it player
	if body.name == "Player":
		question.askPurpleQuestion()
		#change to invisible
		visible = false

