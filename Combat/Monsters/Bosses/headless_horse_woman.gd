extends StaticBody2D

@export_enum("NonSelectable", "isSelectable", "isSelected") var UnitSelection: int
@onready var sprite:AnimatedSprite2D = $AnimatedSprite2D
@onready var UnitStatus:TextureButton = $TextureButton

func _ready():
	sprite.play("idle")
	UnitStatus.hide()
