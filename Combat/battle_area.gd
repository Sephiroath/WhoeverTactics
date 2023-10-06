extends Node2D

@onready var BossArea = get_node("%BossArea")
@onready var BossArea2 = get_node("%BossArea2")

func load_battle_positions(unit_positions:UnitPositions):
	if unit_positions.firstBoss != null:
		var firstBoss = unit_positions.firstBoss.BossBody.instantiate()
		BossArea.add_child(firstBoss)
	if unit_positions.secondBoss != null:
		var secondBoss = unit_positions.secondBoss.BossBody.instantiate()
		BossArea2.add_child(secondBoss)
