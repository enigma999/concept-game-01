extends CharacterBody2D

@export var speed := 300.0
@export var radius := 16.0
@export var color := Color.CORNFLOWER_BLUE

func _physics_process(_delta):
	var dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = dir * speed
	move_and_slide()

func _ready():
	position = get_viewport_rect().size / 2
