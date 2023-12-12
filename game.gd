extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Node2D/HBoxContainer3/HBoxContainer/Label.text = str(Global.diamonds)
	$Node2D/HBoxContainer3/HBoxContainer2/Label.text = str(Global.hearts)
