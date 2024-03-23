extends KinematicBody2D

### all of the variables:
#When scene loads, use sprite instead of $Sprite as easier
onready var sprite = $Sprite
#Amount of drops of water
var score : int = 0
#how fast the sprite travels
var speed : int = 200
#How high the sprite can jump
var jumpForce : int = 450
#The amount of gravity pulling the sprite to the ground 
var gravity : int = 700
#X and Y position
var vel : Vector2 = Vector2()
#if the sprite is grounded
var grounded : bool = false
#The colour of the sprite
export var spriteColour = "Idle_red"

# getting the character to move
func _physics_process (delta):
	#set animation to variable spriteColour
	sprite.play(spriteColour)
	vel.x = 0
	
	#when the jump button is pressed
	if Input.is_action_pressed("jump") and is_on_floor():
		#move the character up the y axis
		vel.y -= jumpForce
	
	#changing the x axis of the sprite when the "move left" button is pressed
	if Input.is_action_pressed("move_left"):
		#move the sprite in the left direction
		vel.x -= speed
	
	#changing the y axis of the sprite when the "move right" button is pressed
	if Input.is_action_pressed("move_right"):
		#move the sprite in the right direction
		vel.x += speed
	
	#change the vel variable
	vel = move_and_slide(vel, Vector2.UP)
	#change the y axis, which is related to gravity
	vel.y += gravity * delta
	
	
	#change the direction of the sprite is facing (so it's not walking backwards)
	if vel.x < 0:
		sprite.flip_h = false
	elif vel.x > 0:
		sprite.flip_h = true

#reloads the scene when the function die() is called
func die ():
	#change speed to 0 so the sprite can't move anywhere
	speed = 0
	set_process_unhandled_input(false)
	#reload scene to start
	get_tree().reload_current_scene()
	#get_tree().change_scene("res://levelOver.tscn")

#shows the UI (the water drop amounts and the buttons to change colour
onready var ui = get_node("/root/MainScene/CanvasLayer/UI")
#change the water drop value when touching one
func collect_coin (value):
	#increase score by 1
	score += value
	#change UI text so user can see it
	ui.set_score_text(score)

#functions to change sprite colour
func change_blue():
	#change variable spritecolour to dark blue
	spriteColour = "Idle_dark_blue"
func change_red():
	#change variable spritecolour to red
	spriteColour = "Idle_red"
func change_lit_green():
	#change variable spritecolour to light green
	spriteColour = "Idle_light_green"
func change_pink():
	#change variable spritecolour to pink
	spriteColour = "Idle_pink"
func change_purple():
	#change variable spritecolour to purple
	spriteColour = "Idle_purple"
func change_orange():
	#change variable spritecolour to orange
	spriteColour = "Idle_orange"
func change_Xmas_Hat():
	#change variable spritecolour to christmas hat
	spriteColour = "Idle_christmas_hat"
