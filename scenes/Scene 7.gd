extends "res://objects/Basic.gd"

# GOAL: Test the start of the world to change your route.

# You need to toggle closed switches and collect coins along the 
# main path, but several paths take you away from it.

# You can use conditional code to detect whether your character is
# under a coin or on a closed switched. Use that information to 
# solve one of the branches.

# EXAMPLE:
#	for i in range(0, 5):
#		goForward()
#		if isOnClosedSwitch:
#			solveLeftSide()
#		elif isUnderCoin:
#			solveRightSide()


# Don't worry. The items won't change for this scene. Try to solve
# it using as little code as you can.

# INSTRUCTIONS:
# write functions to handle smaller patterns of the challenge


# INSTRUCTIONS (cont):
# Use your functions below to solve the whole challenge
func execute (userdata):


	pass





























func _ready():
	$Luigi.face_west()
	put_luigi_at_cell (24, 11)

	put_coin_at_cell (21, 11)
	put_switch_at_cell(18, 11)
	put_open_switch_at_cell(14, 11)

	put_coin_at_cell (9, 11)
	put_switch_at_cell(6, 11)

	put_coin_at_cell(18, 14)
	put_coin_at_cell(6, 14)
	
	put_coin_at_cell(18, 4)
	put_coin_at_cell(6, 4)
	

func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
	
	
	