extends Node2D
# The World is the level loader and the scene where everything takes place.
# The camera's left limit should be set to (-offset + 1) because it fixes a 
# weird pixel glitch.

onready var camera : Camera2D = $Camera
onready var player : Player = $Player


func _ready() -> void:
	VisualServer.set_default_clear_color(Color.black)


func _process(_delta: float) -> void:
	# TODO: Cases where player moves out of camera's y-frame
	camera.global_position.x = player.global_position.x