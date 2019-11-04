extends "res://objects/Basic.gd"

# GOAL: Use the not operator to make Luigi turn left whenever there
#       is an obstacle in his way.

# The variable isBlocked is true when something is in his way and
# false when the path is clear.
#
# Use conditions to handle these changes.


# INSTRUCTIONS:
# Fill in the body of this loop so that Luigi will reach the flag.

func execute (userdata):
	for i in range(0, 33):
		if not isBlocked:
			goForward()
		else:
			turnLeft()
			goForward()
	pass


























func _ready():
	$Luigi.face_east()
	updateBlocked()
	print(isBlocked)
	
	put_luigi_at_cell (12, 12)

	put_flag_at_cell(17, 10)
	$Flag.visible = true

func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
	
	
	