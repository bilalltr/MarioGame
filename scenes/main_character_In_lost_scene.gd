extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var deirection = Vector2.DOWN

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# Add the gravity.
	var found_wall = is_on_floor()
	if found_wall:
		deirection = Vector2.RIGHT
	velocity = deirection * 200
	
	move_and_slide()


