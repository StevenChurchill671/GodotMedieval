extends Node3D
var localHousingAreas =[]
func _ready():
	var localHousingAreas = [get_child(1),get_child(2),get_child(3),get_child(4),get_child(5),get_child(6)]
func passHousingAreas():
	var localHousingAreas = [get_child(1),get_child(2),get_child(3),get_child(4),get_child(5),get_child(6)]
	return localHousingAreas
