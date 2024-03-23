extends Area2D

# exports the amount of value
export var value = 1

# When something touches water drop"
func _on_Coin_body_entered(body):
	# check that it was the player
	if body.name == "Player":
		# call function collect_coin in player.gd
		body.collect_coin(value)
		#removes the node from the scene (and tree)
		queue_free()
