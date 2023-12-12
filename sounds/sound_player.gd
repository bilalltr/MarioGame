extends Node


const HURT = preload("res://sounds/Hurt.wav")
const JUMP = preload("res://sounds/Jump.wav")
const EAT = preload("res://Sounds/eat.wav")
const FIN = preload("res://Sounds/fin.wav")

@onready var audioPlayers = $AudioPlayer

func play_sound(sound):
	for audioStreamPlayer in audioPlayers.get_children():
		if not audioStreamPlayer.playing:
			audioStreamPlayer.stream = sound
			audioStreamPlayer.play()
			break
