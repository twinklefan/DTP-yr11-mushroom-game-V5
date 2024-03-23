extends Area2D

func _ready():
	print(visible)
	visible = true

func _on_extraBlue_body_entered(body):
	#get question node
	var question = get_parent().get_node("question1")
	#check if it player
	if body.name == "Player":
		question.askBlueQuestion()
		#change to invisible
		visible = false
	
