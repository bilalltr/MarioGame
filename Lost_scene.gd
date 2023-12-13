extends Control


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
	get_tree().change_scene_to_file("res://game.tscn")


func _on_home_pressed():
	Global.hearts = 3
	Global.diamonds = 0
	get_tree().change_scene_to_file("res://Home.tscn")
