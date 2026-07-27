extends Node

var locationList
func _ready() -> void:
	locationList = $locationInitialiser.initialiseLocations()
	$houseinitialiser.forEachLocationIn(locationList)
	print("hey")
	
func generateMapData():
	print ("mapgenerated")
	return locationList

	
