extends "res://objects/Basic.gd"

# GOAL: Use the AND operator to have Luigi gather coins and open switches.


# INSTRUCTIONS:
# write functions to handle smaller patterns of the challenge


# INSTRUCTIONS (cont):
# Fill in the body of this function so that Luigi will gather
# the coins and toggle switches.
func execute ():
	for i in range(0, 17):
		goForward()

	pass





























func _ready():
	$Luigi.face_east()
	put_luigi_at_cell (8, 6)
	updateBlocked()

	put_coin_at_cell (25, 10)
	proceed.post()	

func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
func main(userdata):
	proceed.wait()
	execute()
	
	
	