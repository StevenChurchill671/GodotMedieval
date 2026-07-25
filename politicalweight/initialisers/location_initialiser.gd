extends Node

var initialhousinglocation : PackedScene = preload("res://Areas/initousingloc.tscn")


## Stores the flat land representing a location. [br]
## Called via [method getLocationStorage] in locationInitialiser. 
var locationStorage = []

## returns [param locationStorage]
func getLocationStorage():
	return locationStorage
## takes
func initialiseLocations():
	var localMovement = initialhousinglocation.instantiate()
	add_child(localMovement)
	localMovement.position = Vector3(16,0,0)
	return localMovement
