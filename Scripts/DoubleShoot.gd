extends RigidBody2D


func _physics_process(_delta):
	if get_child_count() == 0:
		queue_free()
		
func apply_impulse(vector, strong):
	$DDisparo1.apply_impulse(vector, strong)
	$DDisparo2.apply_impulse(vector, strong)
