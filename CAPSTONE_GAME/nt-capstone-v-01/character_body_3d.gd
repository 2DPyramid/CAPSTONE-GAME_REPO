extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5


const CURSOR_POINT = preload("uid://bvphk5xynovaa")
const CURSOR_GRAB = preload("uid://djuorie6p48hv")

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var throwythingm = $Camera3D/RayCast3D.get_collider()
		if throwythingm:
			Input.set_custom_mouse_cursor(CURSOR_GRAB, Input.CURSOR_BUSY)
			throwythingm.apply_impulse(Vector3(0., 10., -10.))
			
			
	move_and_slide()
	
	
	
	
	
	
	
