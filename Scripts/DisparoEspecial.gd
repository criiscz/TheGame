extends RigidBody2D


func _physics_process(_delta):
	if get_child_count() == 0:
		queue_free()

func apply_impulse(vector, strong):
	$Disparo.apply_impulse(vector, strong)
	$Disparo2.apply_impulse(vector, strong)
	$Disparo3.apply_impulse(vector, strong)
