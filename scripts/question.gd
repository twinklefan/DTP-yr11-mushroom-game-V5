extends Panel

export onready var blue_correct = 0
export onready var blue_collected = 0

#call when scene loads
func _ready():
	#Set visiblitity of the question panel to false
	visible = false 

#When correct button pressed:
func _on_Button_button_down():
	#var to keep track if question was correct
	blue_collected =+ 1
	blue_correct =+ 1
	#change visibility of question panel to false again
	visible = false
	var player = get_parent().get_node("Player")
	#change sprite animation to dark blue 
	player.spriteColour = "Idle_dark_blue"
	get_parent().get_node("Blue").visible()

#When the incorrect button is pressed:
func _on_Button2_button_down():
	#change visible of question panel to false
	visible = false
	blue_collected =+ 1
	get_parent().get_node("Blue").invisible()

func askBlueQuestion():
	if blue_collected == 1:
		visible = false
	else:
		visible = true
