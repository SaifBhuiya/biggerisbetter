extends Node2D

@export var speed:float
@export var radius:float
var initx
var inity
var time :float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	initx = get_parent().position.x
	inity = get_parent().position.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	time-=delta
	position.x = initx + (sin(time * speed) * radius)
	position.y = inity + (cos(time * speed) * radius)
