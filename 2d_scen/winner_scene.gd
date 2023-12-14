extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	SoundPlayer.play_sound(SoundPlayer.WIN)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_exit_pressed():
	print("Exit Button was PRESSED")
	get_tree().quit()

func _on_home_pressed():
	Global.hearts = 3
	Global.diamonds = 0
	get_tree().change_scene_to_file("res://Home.tscn")


