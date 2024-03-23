extends Panel

export onready var purple_collected = 0
export onready var purple_correct = 0

#call when scene loads
func _ready():
	#Set visiblitity of the question panel to false"flip_v"
	visible = false 

#when correct button is pressed
func _on_btnCorrect_button_down():
	#variable to keep track if question was correct
	purple_collected =+ 1
	purple_correct =+ 1
	#change visibility of question panel to false again
	visible = false
	var player = get_parent().get_node("Player")
	#change sprite animation to purple
	player.spriteColour = "Idle_purple"
	get_parent().get_node("btnPurple").visible()

#when incorrect buttin is pressed
func _on_btnWrong_button_down():
	#change visible of question panel to false
	visible = false
	#add to variable that keeps tracks of amount of times asked
	purple_collected =+ 1
	get_parent().get_node("btnPurple").invisible()

func askPurpleQuestion():
	if purple_collected == 1:
		visible = false
	else:
		visible = true
	
