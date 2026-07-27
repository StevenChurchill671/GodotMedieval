class_name setup
extends CanvasLayer

func printSpecsForConfig():
	print("config specs")

func _ready():
	printSpecsForConfig()
	var newChildOne = PanelContainer.new()
	add_child(newChildOne)
	var childTwo = VBoxContainer.new()
	PanelContainer.PRESET_FULL_RECT
	newChildOne.add_child(childTwo)
	newChildOne = Label.new()
	childTwo.add_child(newChildOne)
	newChildOne.text = "hey"

func createMap(position):
	print("createMap")
	var rect = ColorRect.new()
	add_child(rect)
	#rect.set_position(Vector2(1,2))
