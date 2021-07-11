extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 1.24

# Tutorial link:
# https://www.youtube.com/watch?v=mAbG8Oi-SvQ&list=RDCMUCrHQNOyU1q6BFEfkNq2CYMA&start_radio=1&rv=mAbG8Oi-SvQ&t=87&ab_channel=HeartBeast

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength('ui_right') - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength('ui_down') - Input.get_action_strength("ui_up")
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector * speed
	else:
		velocity = Vector2.ZERO
		
	move_and_collide(velocity)

