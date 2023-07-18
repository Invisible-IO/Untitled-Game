extends Area3D

signal coinCollected

func _ready():
	pass 
	
func _physics_process(delta):
	rotate_y(deg_to_rad(3))


func _on_body_entered(body):
	if body.name == "Player":
		#print("I did a thing!")
		$Timer.start()

func _on_Timer_timeout():
	emit_signal("coinCollected")
	queue_free()
