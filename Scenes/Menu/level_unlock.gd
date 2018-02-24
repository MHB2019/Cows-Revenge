extends Node2D

func _ready():
	var levels = get_node("ScrollContainer/VBoxContainer").get_children()
	for i in range (0, min(global.unlocked_levels, levels.size())): 
		levels[i].set_disabled(false)
	
	get_node("ScrollContainer").grab_focus()
	get_node("ScrollContainer/VBoxContainer").grab_focus()
	get_node("ScrollContainer/VBoxContainer/Button1").grab_focus()