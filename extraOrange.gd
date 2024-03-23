extends Area2D

func _ready():
	visible = true

func _on_extraOrange_body_entered(body):
	#get question node
	var question = get_parent().get_node("question5")
	#check if it player
	if body.name == "Player":
		question.askOrangeQuestion()
		#change to invisible
		visible = false
