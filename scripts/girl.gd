extends CharacterBody2D


const GRAVITY = 4200
const JUMP_VELOCITY = -600.0


func _physics_process(delta: float) -> void:
	velocity += get_gravity() * delta
		 

	# Handle jump.
	if is_on_floor():
		$CollisionShape2D.disabled = false
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		elif Input.is_action_pressed("ui_down"):
			$AnimatedSprite2D.play("duck")
			$CollisionShape2D.disabled = true
		else:
			$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("jump")
		
			
# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	move_and_slide()
