extends "res://objects/Basic.gd"

# GOAL: Use a function, loop and a conditional to collect coins or
#      activate switches.

# In this puzzle some of the gems and switches move around. You can't
# depend on their being in the same place every time. You could write
# a lot of it statements but there are better ways.

# Start by breaking the problem into basic patterns.


# INSTRUCTIONS:
# write a function to grab a coin OR toggle a switch
func collectOrToggle():
	
	pass
	
# INSTRUCTIONS (cont):
# Use the function above to travel, collect and toggle
func execute ():

	pass


























func _ready():
	$Luigi.face_east()
	put_luigi_at_cell (7, 12)

	put_flag_at_cell(7, 5)
	
	coin_or_switch (21, 12)
	coin_or_switch (10 + rng.randi() % 9, 12)
	coin_or_switch (21, 5 + rng.randi() % 6)
	coin_or_switch (10 + rng.randi() % 4, 5)
	coin_or_switch (15 + rng.randi() % 4, 5)
	proceed.post()

func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
	
func main(userdata):
	proceed.wait()
	execute()

	