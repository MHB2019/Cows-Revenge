extends Area2D

export(int) var amount = 100

onready var sound = get_node("Sound")
onready var sprite = get_node("Sprite")

func _ready():
	sound.connect("finished",self,"queue_free")

func _on_Apple_body_enter( body ):
	if(body.is_in_group("player")):
		body.add_milk(amount)
		disconnect("body_enter",self,"_on_Area2D_body_enter")
		sound.play()
		sprite.set_opacity(0)
		
		

