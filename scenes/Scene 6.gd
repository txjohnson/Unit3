extends "res://objects/Basic.gd"

# GOAL: Use conditions, functions and loops to collect coins and toggle
#       switches.

# The elements of the map appear at random. You can't depend on things
# being a certain way every time you play the scene.
#
# Use conditions to handle these changes.


# INSTRUCTIONS:
# Define your own functions to break down the problem into simpler parts.

# INSTRUCTIONS (cont):
# Call your functions to solve the puzzle.
func execute (userdata):

	pass


























func _ready():
	$Luigi.face_north()
	put_luigi_at_cell (15, 8)

	coin_or_switch (12, 8)
	coin_or_switch (17, 8)
	coin_or_switch (15, 6)
	coin_or_switch (15, 10)

	coin_or_switch (12, 6)
	coin_or_switch (12, 10)
	coin_or_switch (17, 6)
	coin_or_switch (17, 10)

func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
	
	
	