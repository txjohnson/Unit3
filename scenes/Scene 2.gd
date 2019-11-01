extends "res://objects/Basic.gd"

# GOAL: Use if and elif to toggle a switch or collect a coin
# isOnClosedSwitch can tell you if Luigi is on a switch that is closed,
# and now isUnderCoin can tell you if Luigi is underneath a coin

# Use those variables in a conditional to either toggle a switch or
# collect a coin.
#
# Example:
#	if isOnClosedSwitch:
#		toggleSwitch()
#	elif isUnderCoin:
#		jump()

# The coin and switch appear at random. Every time you play this scene,
# a different setup may occur.


# INSTRUCTIONS 
# 1. Move to first position
# 2. toggleSwitch() or jump() depending on what is ther
# 3. repeat for next position
func execute (userdata):

	pass


























func _ready():
	$Luigi.face_east()
	put_luigi_at_cell (12, 9)


	if rng.randi() % 2:
		put_switch_at_cell (14, 9)
	else:
		put_coin_at_cell (14, 9)
		
	if rng.randi() % 2:
		put_switch_at_cell (16, 9)
	else:
		put_coin_at_cell (16, 9)
	
		