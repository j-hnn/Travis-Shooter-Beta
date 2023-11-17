class_name PowerUp extends Area2D

@export var speed = 100

func _physics_process(delta):
	global_position.y += speed * delta
	
func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
	
func die():
	queue_free()

func _on_body_entered(body):
	if body is Player:
		die()
		body.play_powerup()
		body.fire_rate /= 2
