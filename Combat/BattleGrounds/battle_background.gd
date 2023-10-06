extends Control

@export var battle_background_map:Texture2D

@onready var battle_background:TextureRect = $BattleBackgroundTextrure
@onready var BattleArea = $BattleArea

func _ready():
	if battle_background_map != null:
		battle_background.texture = battle_background_map

func load_battle_positions(unit_positions:UnitPositions):
	BattleArea.load_battle_positions(unit_positions)
