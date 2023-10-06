extends Control

@export var battle_map:Resource
@export var unit_positions:UnitPositions

var battle_map_instance = null

func _ready():
	if battle_map == null:
		battle_map = load("res://Combat/BattleGrounds/battle_background.tscn")
	battle_map_instance = battle_map.instantiate()
	add_child(battle_map_instance)
	create_combatants()

func create_combatants():
	if unit_positions == null:
		return
	battle_map_instance.load_battle_positions(unit_positions)

