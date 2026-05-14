extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const MOUSE_SENSITIVITY = 0.002

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var tilt = Vector2.ZERO

@onready var head = $Head

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

	if event is InputEventMouseMotion:
		tilt.x -= event.relative.x * MOUSE_SENSITIVITY
		tilt.y -= event.relative.y * MOUSE_SENSITIVITY
		tilt.y = clamp(tilt.y, deg_to_rad(-50), deg_to_rad(25))
		rotation.y = tilt.x
		head.rotation.x = tilt.y

func _physics_process(delta):
	if not is_on_floor():
		velocity.y -= gravity * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var input_dir = Vector2.ZERO
	input_dir.x = Input.get_axis("move_left", "move_right")   # ✅ actions custom
	input_dir.y = Input.get_axis("move_forward", "move_back") # ✅ actions custom

	var direction = (transform.basis * Vector3(-input_dir.x, 0, -input_dir.y)).normalized()

	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * 10 * delta) # ✅ delta ajouté
		velocity.z = move_toward(velocity.z, 0, SPEED * 10 * delta)

	move_and_slide()
