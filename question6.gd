extends Panel

export onready var Xmas_Hat_collected = 0
export onready var Xmas_Hat_correct = 0

#call when scene loads
func _ready():
	#Set visiblitity of the question panel to false
	visible = false 

#when correct button is pressed
func _on_btnCorrect_button_down():
	#variable to keep track if question was correct
	Xmas_Hat_collected = 1
	Xmas_Hat_correct = 1
	#change visibility of question panel to false again
	visible = false
	var player = get_parent().get_node("Player")
	#change sprite animation to light green
	player.spriteColour = "Idle_christmas_hat"
	get_parent().get_node("btnXmasHat").visible()

#when incorrect button is pressed
func _on_btnWrong_button_down():
	#change visible of question panel to false
	visible = false
	Xmas_Hat_collected =+ 1
	get_parent().get_node("btnXmasHat").invisible()

func askXmasHatQuestion():
	if Xmas_Hat_collected == 1:
		visible = false
	else:
		visible = true
	
