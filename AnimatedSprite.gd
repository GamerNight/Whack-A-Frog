
extends AnimatedSprite

var initpos=get_pos()
var startTime=0

func _ready():
	set_process(true)
	pass

func _process(delta):
	var anim=get_node("AnimationPlayer").get_animation("frogAnim")
	anim.track_set_key_value(1,0,initpos)
	anim.track_set_key_value(1,1,Vector2(initpos.x,initpos.y-100))
	anim.track_set_key_value(1,2,initpos)
	if(startTime>0.5):
		startTime=0
		if(int(self.get_name()) == (randi() % 16)):
			self.get_node("AnimationPlayer").play("frogAnim")
	else:
		startTime+=delta