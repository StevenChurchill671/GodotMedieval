## Responsible for initialising
## the base floors which will
## contain areas for 
## buildings/structures
##[br]contains:[br][member initialhousinglocation]
##[br][member locationStorage]
##[br][method getLocationStorage] [br]
## [br]
##[method initialiseLocations]
class_name locationInitialiser
extends Node

## Preloads the inithousingloc (base floor).
var initialhousinglocation : PackedScene = preload("res://Areas/initousingloc.tscn")

var fieldOneLocation : PackedScene = preload("res://field_one.tscn")

## Stores the flat land representing a location. [br]
## Called via [method getLocationStorage] in locationInitialiser. 
var locationStorage = []

## returns [param locationStorage]
func getLocationStorage():
	return locationStorage

## Instantiates [member initialhousinglocation] as [member localMovement].
## [br]adds [member localMovement] as a child
## of [member locationInitialiser]. 
##[br]moves the location to viable space (WIP).[br]
##[method append] [member locationStorage] to add [member localMovement]
##[br][method return] [method getLocationStorage]
##Returns a list of locations. 
func initialiseLocations():
	var localMovement = initialhousinglocation.instantiate()
	add_child(localMovement)
	localMovement.position = Vector3(0,0,0)
	locationStorage.append(localMovement)
	
	localMovement = fieldOneLocation.instantiate()
	add_child(localMovement)
	localMovement.position = Vector3(90,0,0)
	locationStorage.append(localMovement)
	
	return getLocationStorage()
