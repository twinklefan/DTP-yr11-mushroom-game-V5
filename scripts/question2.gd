extends Panel

export onready var Lit_Green_collected = 0
export onready var Lit_Green_correct = 0

#call when scene loads
func _ready():
	#Set visiblitity of the question panel to false"flip_v"
	visible = false 

#when correct button is pressed
func _on_btnCorrect_button_down():
	#variable to keep track if question was correct
	Lit_Green_collected = 1
	Lit_Green_correct = 1
	#change visibility of question panel to false again
	visible = false
	var player = get_parent().get_node("Player")
	#change sprite animation to light green
	player.spriteColour = "Idle_light_green"
	get_parent().get_node("btnLightGreen").visible()

#when incorrect button is pressed
func _on_btnWrong_button_down():
	#change visible of question panel to false
	visible = false
	Lit_Green_collected =+ 1
	get_parent().get_node("btnLightGreen").invisible()

func askLitGreenQuestion():
	if Lit_Green_collected == 1:
		visible = false
	else:
		visible = true
	
