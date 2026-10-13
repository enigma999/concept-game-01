@tool
class_name CharacterVector
extends Node2D

@export var radius := 16.0:
	set(v):
		radius = v
		queue_redraw()

@export var color := Color.CORNFLOWER_BLUE:
	set(v):
		color = v
		queue_redraw()

@export var isPlayer := false

func _draw():
	draw_circle(Vector2.ZERO, radius, color)
