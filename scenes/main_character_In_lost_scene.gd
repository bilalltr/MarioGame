extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var deirection = Vector2.RIGHT

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _on_character_body_2d_ready():
	velocity += gravity

func _physics_process(delta):
	# Add the gravity.
	var found_wall = is_on_wall()
	if found_wall:
		deirection *= -1
	velocity = deirection * 250
	move_and_slide()


