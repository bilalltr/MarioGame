extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -900.0
@onready var sprite_2d = $Sprite2D
@onready var cliffTileMap = $"../TileMap"
@onready var camera = $Camera2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	if(velocity.x > 1 || velocity.x < -1):
		sprite_2d.animation= "running"
	else:
		sprite_2d.animation= "default"
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation= "jumping"

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 10)

	move_and_slide()
	var isLeft = velocity.x < 0 
	sprite_2d.flip_h = isLeft


func _on_area_2d_area_entered(area):
	Global.diamonds = Global.diamonds + 1
	area.queue_free()

func _ready():
	camera.position = Vector2(0, 0)
	set_camera_limits()

func set_camera_limits():
	var map_cellsize = cliffTileMap.cell_quadrant_size
	var map_used_area_size = cliffTileMap.get_used_rect().size * map_cellsize
#	camera.limit_left = -100000000000
#	camera.limit_right = map_used_area_size.x
#	camera.limit_top = 0
#	camera.limit_bottom = map_used_area_size.y

