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
	
