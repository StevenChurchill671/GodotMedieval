extends Node


func _ready() -> void:
	var location = $locationInitialiser.initialiseLocations()
	$houseinitialiser.startMap(3, location)
	print("hey")
	


	
