extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.hearts == 0: 
		get_tree().root.add_child(Global.Lost_scene)
		get_tree().root.remove_child(get_tree().root.get_child(0))



func _on_area_2d_2_area_entered(area):
	if area.name == "Spiker": 
		get_tree().reload_current_scene()
		Global.hearts = Global.hearts - 1
		Global.diamonds = 0
	elif area.name == "Enimie": 
		get_tree().reload_current_scene()
		Global.hearts = Global.hearts - 1
		Global.diamonds = 0
	else:
		Global.diamonds = Global.diamonds + 1
		area.queue_free()
