extends CharacterBody2D

@export_subgroup("Movement")
@export var speed = 300.0

func _physics_process(delta: float) -> void:
	# Obtém a direção com base na entrada do jogador
	var direction := Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("backward") - Input.get_action_strength("forward")
	).normalized() # Normaliza para manter a velocidade constante em diagonal

	# Define a velocidade com base na direção
	velocity = direction * speed

	# Move o personagem
	move_and_slide()
