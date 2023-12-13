extends CharacterBody2D

@onready var sprite_2d = $Sprite2D

func _physics_process(delta):
	sprite_2d.animation= "flag"
