extends CharacterBody2D

var deirection = Vector2.RIGHT


func _physics_process(delta):
	# Add the gravity.
	var found_wall = is_on_wall()
	if found_wall:
		deirection *= -1
	velocity = deirection * 250
	move_and_slide()


