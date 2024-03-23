extends Area2D

# Kills the player when they touch the enemy
func _on_Enemy_body_entered(body):
	if body.name == "Player":
		body.die()


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.die()
