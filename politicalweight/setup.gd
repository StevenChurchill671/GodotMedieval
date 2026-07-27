class_name setup
extends CanvasLayer

func printSpecsForConfig():
	print("config specs")


var listOfAreaRects = []
func _process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		for rect in listOfAreaRects:
			rect.set_position(rect.position + Vector2(1,0))
	if Input.is_action_pressed("right"):
		for rect in listOfAreaRects:
			rect.set_position(rect.position + Vector2(-1,0))
	if Input.is_action_pressed("down"):
		for rect in listOfAreaRects:
			rect.set_position(rect.position + Vector2(0,-1))
	if Input.is_action_pressed("up"):
		for rect in listOfAreaRects:
			rect.set_position(rect.position + Vector2(0,1))
func _ready():
	printSpecsForConfig()
	#var newChildOne = SubViewport.new()
	#add_child(newChildOne)
	#var childTwo = VBoxContainer.new()
	#PanelContainer.PRESET_FULL_RECT
	#newChildOne.add_child(childTwo)
	#newChildOne = Label.new()
	#childTwo.add_child(newChildOne)
	#newChildOne.text = "hey"

func createMap(locations):
	var translateAmount = Vector2(-1,1)
	print("createMap")
	for location in locations:
		var housingAreas =  location.passHousingAreas()
		for house in housingAreas:
			var rect = ColorRect.new()
			add_child(rect)
			if house.size == 1:
				rect.color = Color(0.769, 0.113, 0.51, 1.0)
			if house.size == 8:
				rect.color = Color(0.0, 0.357, 0.0, 1.0)
			rect.set_position(Vector2(house.position.x,house.position.z)*translateAmount)
			rect.set_size(Vector2(50,100))
			listOfAreaRects.append(rect)
			print("rect")
