extends Area2D

func _ready():
	visible = true




func _on_extraChirstmasHat_body_entered(body):
	#get question node
	var question = get_parent().get_node("question6")
	#check if it player
	if body.name == "Player":
		#change to invisible
		visible = false
		question.askXmasHatQuestion()
