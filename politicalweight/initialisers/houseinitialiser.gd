extends Node
## Preloads houseOne.
var houseOne : PackedScene = preload("res://housing/houseone.tscn")
var grassField : PackedScene = preload("res://grass_field.tscn")
##
var arrayConfig = [4,5,6,7,8,9,10,11]
func startMap(location):
	for houseArea in location.passHousingAreas():
		houseArea.get_child(0).hide()
		var theHouse = houseOne.instantiate()
		houseArea.replaceStructure(theHouse)
		testVillager(theHouse)
## arraycontainingnumbersrepresentinghousestohide/deactivate.
func startMapWithConfig(location, arrayContainingNumbers):
	var numberOfHouse = 0
	for houseArea in location.passHousingAreas():
		houseArea.get_child(0).hide()
		if arrayContainingNumbers.has(numberOfHouse):
			numberOfHouse +=1
		else:
			numberOfHouse +=1
			houseArea.activateArea()
			if houseArea.size == 1:
				var theHouse = houseOne.instantiate()
				houseArea.replaceStructure(theHouse)
				testVillager(theHouse)
			if houseArea.size == 8:
				var theHouse = grassField.instantiate()
				houseArea.replaceStructure(theHouse)

## Iterates through [param locationList] to extract locations
## then runs [method StartMap] to put housing in each location.
func forEachLocationIn(locationList):
	for location in locationList:
		startMapWithConfig(location, arrayConfig)
		

var personScene : PackedScene = preload("res://person.tscn")
var person
func testVillager(house):
	person = personScene.instantiate()
	house.add_child(person)
	person.position += Vector3(1,0,1)
	person.applyHouse(house)
	
