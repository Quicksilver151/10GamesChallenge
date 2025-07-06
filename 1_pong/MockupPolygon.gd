extends Polygon2D
class_name MockupPolygon

# Called when the node enters the scene tree for the first time.
func _ready():
	var static_body = StaticBody2D.new()
	add_child(static_body)
	var collision_polygon = CollisionPolygon2D.new()
	collision_polygon.polygon = polygon
	static_body.add_child(collision_polygon)
	
