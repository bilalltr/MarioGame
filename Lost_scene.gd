extends Node2D


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
	get_tree().root.add_child(Global.Game_scene)
	get_tree().root.remove_child(get_tree().root.get_child(0))
