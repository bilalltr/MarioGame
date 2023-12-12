extends Node

const HURT = preload("res://Sounds/Hurt.wav")
const JUMP = preload("res://Sounds/Jump.wav")
const EAT = preload("res://Sounds/eat.wav")
const FIN = preload("res://Sounds/fin.wav")

@onready var audioPlayers = $AudioPlayers

func play_sound(sound):
	for audioStreamPlayer in audioPlayers.get_children():
		if not audioStreamPlayer.playing:
			audioStreamPlayer.stream = sound
			audioStreamPlayer.play()
			break
