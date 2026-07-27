class_name setup
extends CanvasLayer

func printSpecsForConfig():
	print("config specs")

func _ready():
	printSpecsForConfig()
	var newChildOne = SubViewport.new()
	add_child(newChildOne)
	#var childTwo = VBoxContainer.new()
	#PanelContainer.PRESET_FULL_RECT
	#newChildOne.add_child(childTwo)
	#newChildOne = Label.new()
	#childTwo.add_child(newChildOne)
	#newChildOne.text = "hey"

func createMap(locations):
	var translateAmount = Vector2(0.2,0.2)
	print("createMap")
	for location in locations:
		var housingAreas =  location.passHousingAreas()
		for house in housingAreas:
			var rect = ColorRect.new()
			get_child(0).add_child(rect)
			if house.size == 1:
				rect.color = Color(0.769, 0.113, 0.51, 1.0)
			if house.size == 8:
				rect.color = Color(0.0, 0.357, 0.0, 1.0)
			rect.set_position(Vector2(house.position.x,house.position.z))
