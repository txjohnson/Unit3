extends "res://objects/Basic.gd"

# GOAL: Use an if statement to toggle on closed switches.
# The variable isOnClosedSwitch is true when Luigi is on a closed switch.
# 
# So use isOnClosedSwitch as the condition in the if statement so you
# can tell if Luigi is on a closed switch or not.

# Example:
#	if isOnClosedSwitch:
#		toggleSwitch()

# Toggle switches by issuing the command: toggleSWitch()


# INSTRUCTIONS:
# 1. Move to first switch
# 2. If the switch is closed, then use toggleSwitch() to open it
# 3. Repeat for the remaining switches
func execute ():

	pass


























func _ready():
	$Luigi.face_east()
	put_luigi_at_cell (12, 9)

	put_random_switch_at_cell(14, 9)
	put_random_switch_at_cell(16, 9)
	put_random_switch_at_cell(18, 9)
	
	proceed.post()

func main(userdata):
	proceed.wait()
	execute()
