extends Area2D

@onready var timer = $Timer
@onready var animated_sprite = $AnimatedSprite2D
func _on_body_entered(body):
	print("You dead")
	Engine.time_scale = 0.1
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
