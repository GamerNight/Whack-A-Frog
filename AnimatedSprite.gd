
extends AnimatedSprite

var initpos=get_pos()

func _ready():
	set_process(true)
	print(str(initpos))

	pass

func _process(delta):
	var anim=get_node("AnimationPlayer").get_animation("frogAnim")
	anim.track_set_key_value(1,0,initpos)
	anim.track_set_key_value(1,1,Vector2(initpos.x,initpos.y-100))
	anim.track_set_key_value(1,2,initpos)
	if(Input.is_action_pressed("ui_up")):
		get_node("AnimationPlayer").play("frogAnim")

