extends StaticBody2D

class_name BossComponent

@export var boss : Boss = null

func _ready():
	var boss_spawn = boss.BossBody.instantiate()
	add_child(boss_spawn)
