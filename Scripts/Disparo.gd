extends RigidBody2D

var mouse = Vector2.ZERO

func _on_Area2D_area_entered(area):
	if area.is_in_group("enemigo"):
		Global.add_puntos(area.puntos)
		area.set_explosion()
		queue_free()
	if area.is_in_group("boss"):
		Global.remove_vida_boss()
		Global.add_puntos(20)
		area.take_damage()
		queue_free()
	if area.is_in_group("player"):
		queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Area2D_body_entered(body):
	if body.get_class() == "TileMap":
		queue_free()

var velocidad_inicial = 0.1 # La velocidad inicial del disparo
var angulo_disparo = get_angle_to(get_global_mouse_position())  # El ángulo del disparo en grados
var gravedad = 10000# Magnitud de la fuerza de gravedad
var velocidad = Vector2.ZERO


func _physics_process(delta):
	pass

