extends Area2D

func _ready():
	visible = true

func _on_extraLightGreen_body_entered(body):
	#get question node
	var question = get_parent().get_node("question2")
	#check if it player
	if body.name == "Player":
		question.askLitGreenQuestion()
		#change to invisible
		visible = false
