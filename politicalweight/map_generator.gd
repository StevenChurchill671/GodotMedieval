extends Node

func generateMapData():
	var mapData = get_parent().get_parent().generateMapData()
	create2dRepresentation(mapData)
func create2dRepresentation(position):
	$"..".map.createMap(position)
