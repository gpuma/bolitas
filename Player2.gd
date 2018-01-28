extends "res://personaje.gd"

func _ready():
#	acceleration = 1000
#	top_move_speed = 200
#	top_jump_speed = 300
	pass

onready var sprite = get_node("Sprite")

func animate():
	if (Input.is_action_pressed("ui_jump")):
		if (sprite.get_frame() < 4 ):
			sprite.set_frame(sprite.get_frame()+1)
		else:
			sprite.set_frame(0)
	if (Input.is_action_pressed("move_left")):
		if (!sprite.is_flipped_h ()):
			sprite.set_flip_h (true)
	if (Input.is_action_pressed("move_right")):
		if (sprite.is_flipped_h ()):
			sprite.set_flip_h (false)
			
func apply_force(state):
	check_movement(PLAYER_2)
	animate()
	"""
	if (sprite.get_vframes()<6):
		sprite.set_vframes(sprite.get_vframes()+2)
	else:
		if(sprite.get_hframes()<6):
			sprite.set_vframes(2)
			sprite.set_hframes(sprite.get_hframes()+3)
		else:
			sprite.set_hframes(3)
		"""
