extends Area2D

func _ready():
	visible = true
	
func _on_extraPink_body_entered(body):
	#get question node
	var question = get_parent().get_node("question3")
	#check if it player
	if body.name == "Player":
		question.askPinkQuestion()
		#change to invisible
		visible = false
