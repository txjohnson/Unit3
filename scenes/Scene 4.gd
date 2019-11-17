extends "res://objects/Basic.gd"

# GOAL: Complete the if statement to get Luigi to gather walk and gather
#       all of the coins.
#
# Use the isUnderCoin variable in the conditional to do more than just
# grag a coin.
#
# NOTE: The red marker indicates the if statement is incomplete.



# INSTRUCTIONS (cont):
# Complete the if statement and get Luigi to gather the coins and 
# navigate the maze.
func execute ():

	for i in range (0, 36):
		if ... :

		else:
			goForward()
	pass


























func _ready():
	$Luigi.face_east()
	put_luigi_at_cell (11, 14)

	put_coin_at_cell(19, 14)	
	put_coin_at_cell(19, 4)
	put_coin_at_cell(11, 4)
	put_coin_at_cell(11, 10)
	proceed.post()

func main(userdata):
	proceed.wait()
	execute()
