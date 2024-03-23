extends Control

#importing the ScoreText
onready var scoreText = get_node("ScoreText")

#when scene is loaded
func _ready ():
	#change scoreText to 0
	scoreText.text = "0"

#sets the score text to the score value
func set_score_text (score):
	#changes the text shown to the amount of water drops collected
	scoreText.text = str(score)
	
