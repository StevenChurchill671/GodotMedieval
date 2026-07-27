extends Node

func generateMapData():
	var mapData = get_parent().get_parent().generateMapData()
	for area in mapData:
		var position = area.position
		create2dRepresentation(position)
func create2dRepresentation(position):
	$"..".map.createMap(position)
