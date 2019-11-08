extends "res://objects/Basic.gd"

# GOAL: Use the AND operator to have Luigi gather coins and open switches.


# INSTRUCTIONS:
# write functions to handle smaller patterns of the challenge


# INSTRUCTIONS (cont):
# Fill in the body of this function so that Luigi will gather
# the coins and toggle switches.
func execute (userdata):
	for i in range(0, 17):
		goForward()

	pass





























func _ready():
	$Luigi.face_north()
	put_luigi_at_cell (17, 13)
	updateBlocked()

	put_coin_at_cell (17, 12)
	put_switch_at_cell(17, 11)
	put_open_switch_at_cell(17,10)
	put_switch_at_cell(17,9)
		
	put_switch_at_cell(14, 12)
	put_switch_at_cell(14, 10)
	put_switch_at_cell(15, 10)
	put_coin_at_cell (15, 8)
	put_coin_at_cell (12, 12)



func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
	
	
	