extends "res://objects/Basic.gd"

# GOAL: Use an if statement inside a loop to toggle a switch or grab a coin
# In this problem there are a total of eight coins and switches. Move
# straight ahead and collect a coin or switch, depending on what is there.
#
# Don't worry. When you run into the teleporter, Luigi will teleport to
# the rest of the challenge. Just go straight ahead.

# There are several coins to collect and several switches to toggle.
# Instead of repeating the same pattern of commands over and over,
# you can use a loop.


# INSTRUCTIONS:
# 1. Decide how far luigi needs to move and set your for loop
# 2. Add an if/elif statement to collect a coin or toggle a switch
#    when Luigi encounters one
func execute ():
	for i in range (0, 1):
		goForward()
		
		
	pass


























func _ready():
	$Luigi.face_east()
	put_luigi_at_cell (8, 5)

	put_teleporters (18, 5, 8, 12)

	coin_or_switch (10, 5)
	coin_or_switch (12, 5)
	coin_or_switch (14, 5)
	coin_or_switch (16, 5)

	coin_or_switch (10, 12)
	coin_or_switch (12, 12)
	coin_or_switch (14, 12)
	coin_or_switch (16, 12)

	proceed.post()
	
func coin_or_switch (cx, cy):
	if rng.randi() % 2:
		put_coin_at_cell(cx, cy)
	else:
		put_switch_at_cell (cx, cy)
	
	
	
func main(userdata):
	proceed.wait()
	execute()
	