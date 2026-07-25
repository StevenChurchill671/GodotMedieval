extends Node


func _ready() -> void:
	var locationList = $locationInitialiser.initialiseLocations()
	$houseinitialiser.forEachLocationIn(locationList)
	print("hey")
	


	
