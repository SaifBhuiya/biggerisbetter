extends Node2D

var asteroid = preload("res://Scenes/asteroid.tscn")
@onready var timer: Timer = $Timer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_timer_timeout() -> void:
	var item = asteroid.instantiate()
	item.global_position = global_position
	timer.start()
	get_parent().add_child(item)
	#print("asteroid spawned")
