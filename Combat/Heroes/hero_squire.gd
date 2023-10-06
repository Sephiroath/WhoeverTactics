extends CharacterBody2D

@export var isAlly:bool = true
@export var characterWeapon:Texture2D
@export var Hero:Texture2D

@onready var anim = $AnimationPlayer
@onready var sprite = $HeroSprite
@onready var weapon = $HeroWeapon

func _ready():
	anim.play("idle")
	if isAlly:
		sprite.flip_h = true
		weapon.flip_h = true
	get_hero_equipment_and_skin()

func get_hero_equipment_and_skin():
	if  characterWeapon:
		weapon.texture = characterWeapon
	if Hero:
		sprite.texture = Hero

