##A base floor which contains 4 medium
## field_areas or 8 small inithouseareas
class_name fieldOne
extends Node3D

var localHousingAreas =[]
func _ready():
	iterateThroughAreas()
func passHousingAreas():
	iterateThroughAreas()
	return localHousingAreas

func iterateThroughAreas():
	var childrenArray = get_children()
	for child in childrenArray:
		if child.has_method("replaceStructure"):
			localHousingAreas.append(child)
	
