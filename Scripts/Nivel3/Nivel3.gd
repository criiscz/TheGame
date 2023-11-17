extends Node2D

func _ready():#--- Debugging process started ---
#Godot Engine v3.5.3.stable.official.6c814135b - https://godotengine.org
#OpenGL ES 3.0 Renderer: AMD Radeon Vega 10 Graphics (raven, LLVM 15.0.7, DRM 3.49, 6.2.0-36-generic)
#Async. shader compilation: OFF
#
#--- Debugging process stopped ---
#Remove Node(s)
#Switch Scene Tab

	Global.change_level(true)
	
func _process(delta):
	$TextureProgress.value = Global.get_vidaBoss();
	if ($Personaje.position.x > $enemy.position.x):
		$Personaje/PlayerAnimated.flip_h = true
		$Personaje/Weapon.flip_h = true
	else:
		$Personaje/PlayerAnimated.flip_h = false
		$Personaje/Weapon.flip_h = false
