extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	print("Exit Button was PRESSED")
	get_tree().quit()

func _on_restart_pressed():
	print("RESTART Button was PRESSED")
	Global.hearts = 3
	Global.diamonds = 0
	get_tree().root.add_child(preload("res://game.tscn").instantiate())
	get_tree().root.remove_child(get_tree().root.get_child(0))
