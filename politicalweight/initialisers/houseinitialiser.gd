extends Node

var houseOne : PackedScene = preload("res://housing/houseone.tscn")

func startMap(numberOfHouses, location):
	for houseArea in location.passHousingAreas():
		houseArea.get_child(0).hide()
		var theHouse = houseOne.instantiate()
		houseArea.replaceStructure(theHouse)
		testVillager(theHouse)
	
var personScene : PackedScene = preload("res://person.tscn")
var person
func testVillager(house):
	person = personScene.instantiate()
	house.add_child(person)
	person.applyHouse(house)
	
