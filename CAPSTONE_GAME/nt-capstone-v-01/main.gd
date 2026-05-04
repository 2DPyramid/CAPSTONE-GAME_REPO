extends Node3D


const CURSOR_POINT = preload("uid://bvphk5xynovaa")
const CURSOR_GRAB = preload("uid://djuorie6p48hv")


func _ready():
	Input.set_custom_mouse_cursor(CURSOR_POINT, Input.CURSOR_POINTING_HAND)
	Input.set_custom_mouse_cursor(CURSOR_GRAB, Input.CURSOR_BUSY)


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
