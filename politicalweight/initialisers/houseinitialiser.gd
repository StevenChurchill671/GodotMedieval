extends Node
## Preloads houseOne.
var houseOne : PackedScene = preload("res://housing/houseone.tscn")

func startMap(location):
	for houseArea in location.passHousingAreas():
		houseArea.get_child(0).hide()
		var theHouse = houseOne.instantiate()
		houseArea.replaceStructure(theHouse)
		testVillager(theHouse)



## Iterates through [param locationList] to extract locations
## then runs [method StartMap] to put housing in each location.
func forEachLocationIn(locationList):
	for location in locationList:
		startMap(location)
		

var personScene : PackedScene = preload("res://person.tscn")
var person
func testVillager(house):
	person = personScene.instantiate()
	house.add_child(person)
	person.applyHouse(house)
	
