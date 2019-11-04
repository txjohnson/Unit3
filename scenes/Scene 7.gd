extends "res://objects/Basic.gd"

# GOAL: Use the AND operator to have Luigi gather coins and open switches.


# INSTRUCTIONS:
# write functions to handle smaller patterns of the challenge


# INSTRUCTIONS (cont):
# Fill in the body of this function so that Luigi will gather
# the coins and toggle switches.
func execute (userdata):
	for i in range(0, 16):
		goForward()

	pass





























func _ready():
	$Luigi.face_east()
	put_luigi_at_cell (8, 11)
	updateBlocked()

	put_coin_at_cell (10, 11)
	put_open_switch_at_cell(12, 13)
	
	put_coin_at_cell (14, 11)
	put_coin_at_cell (16, 11)
	put_coin_at_cell (18, 11)
	put_coin_at_cell (20, 11)	
	put_coin_at_cell (22, 11)
	
	put_switch_at_cell(16, 13)
	put_switch_at_cell(20, 13)
	put_switch_at_cell(22, 13)
	

func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
	
	
	