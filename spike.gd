extends Area2D

func _on_spike_body_entered(body):
	print("dieeee")
	if body.name == "Player":
		get_parent().get_node("Player").die()
