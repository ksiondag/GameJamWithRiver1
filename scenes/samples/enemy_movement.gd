extends CharacterBody2D


const SPEED = 10000.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

#push_error(playerTransform)

func _physics_process(delta):
	var player = get_node("/root/Top Down Sample/Player")
	velocity = (player.position - position).normalized() * delta * SPEED
	move_and_slide()

